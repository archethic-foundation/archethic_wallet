/// SPDX-License-Identifier: AGPL-3.0-or-later

import 'dart:async';

import 'package:aewallet/application/account/selected_account.dart';
import 'package:aewallet/application/app_service.dart';
import 'package:aewallet/application/nft/nft.dart';
import 'package:aewallet/application/refresh_in_progress.dart';
import 'package:aewallet/application/session/session.dart';
import 'package:aewallet/infrastructure/datasources/account.hive.dart';
import 'package:aewallet/infrastructure/repositories/local_account.dart';
import 'package:aewallet/model/data/account.dart';
import 'package:aewallet/model/data/account_balance.dart';
import 'package:aewallet/modules/aeswap/application/pool/dex_pool.dart';
import 'package:aewallet/modules/aeswap/application/session/provider.dart';
import 'package:aewallet/util/account_formatters.dart';
import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart'
    as aedappfm;
import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:decimal/decimal.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_notifier.g.dart';

@riverpod
class AccountNotifier extends _$AccountNotifier {
  final _logger = Logger('AccountNotifier');

  @override
  FutureOr<Account?> build(String accountName) async {
    return await AccountLocalRepository().getAccount(accountName);
  }

  Future<void> _refresh(
    List<Future<void> Function(Account account)> doRefreshes,
  ) async {
    try {
      final account = await future;
      if (account == null) return;

      ref.read(refreshInProgressNotifierProvider.notifier).refreshInProgress =
          true;
      for (final doRefresh in doRefreshes) {
        await doRefresh(account);

        final newAccountData = account.copyWith();
        state = AsyncData(newAccountData);
      }
    } catch (e, stack) {
      _logger.severe('Refresh failed', e, stack);
    } finally {
      ref.read(refreshInProgressNotifierProvider.notifier).refreshInProgress =
          false;
    }
  }

  Future<void> refreshRecentTransactions() async {
    await _refresh([
      (account) async {
        _logger.fine(
          'Start method refreshRecentTransactions for ${account.nameDisplayed}',
        );
        await updateRecentTransactions();
        _logger.fine(
          'End method refreshRecentTransactions for ${account.nameDisplayed}',
        );
      },
    ]);

    ref.invalidate(selectedAccountRecentTransactionsProvider);
  }

  Future<void> refreshFungibleTokens() async {
    await _refresh([
      (account) async {
        await updateFungiblesTokens();
      },
    ]);
  }

  Future<void> refreshBalance() async {
    await _refresh([
      (account) async {
        await updateBalance();
      },
    ]);
  }

  Future<void> refreshAll() async {
    await _refresh(
      [
        (account) async {
          _logger.fine('RefreshAll - Start Balance refresh');
          await updateBalance();
          _logger.fine('RefreshAll - End Balance refresh');
        },
        (account) async {
          _logger.fine('RefreshAll - Start recent transactions refresh');
          await updateRecentTransactions();
          _logger.fine('RefreshAll - End recent transactions refresh');
        },
        (account) async {
          _logger.fine('RefreshAll - Start Fungible Tokens refresh');
          await updateFungiblesTokens();
          _logger.fine('RefreshAll - End Fungible Tokens refresh');
        },
        (account) async {
          _logger.fine('RefreshAll - Start NFT refresh');
          await updateNFT();
          _logger.fine('RefreshAll - End NFT refresh');
        },
      ],
    );
  }

  Future<void> updateBalance() async {
    final account = await future;
    if (account == null) return;

    var totalUSD = 0.0;

    final balanceGetResponseMap = await ref
        .read(appServiceProvider)
        .getBalanceGetResponse([account.genesisAddress]);

    if (balanceGetResponseMap[account.genesisAddress] == null) {
      return;
    }

    final ucidsTokens = await ref.read(
      aedappfm.UcidsTokensProviders.ucidsTokens(
        environment: ref.read(environmentProvider),
      ).future,
    );

    final cryptoPrice = ref.read(aedappfm.CoinPriceProviders.coinPrices);

    final balanceGetResponse = balanceGetResponseMap[account.genesisAddress]!;
    final ucoAmount = fromBigInt(balanceGetResponse.uco).toDouble();
    final accountBalance = AccountBalance(
      nativeTokenName: AccountBalance.cryptoCurrencyLabel,
      nativeTokenValue: ucoAmount,
    );

    if (balanceGetResponse.uco > 0) {
      accountBalance.tokensFungiblesNb++;

      final archethicOracleUCO = await ref.read(
        aedappfm.ArchethicOracleUCOProviders.archethicOracleUCO.future,
      );
      totalUSD = (Decimal.parse(totalUSD.toString()) +
              Decimal.parse(ucoAmount.toString()) *
                  Decimal.parse(archethicOracleUCO.usd.toString()))
          .toDouble();
    }

    for (final token in balanceGetResponse.token) {
      if (token.tokenId != null) {
        if (token.tokenId == 0) {
          accountBalance.tokensFungiblesNb++;

          final ucidsToken = ucidsTokens[token.address];
          if (ucidsToken != null && ucidsToken != 0) {
            final amountTokenUSD =
                (Decimal.parse(fromBigInt(token.amount).toString()) *
                        Decimal.parse(
                          aedappfm.CoinPriceRepositoryImpl()
                              .getPriceFromUcid(ucidsToken, cryptoPrice)
                              .toString(),
                        ))
                    .toDouble();
            totalUSD = totalUSD + amountTokenUSD;
          }
        } else {
          accountBalance.nftNb++;
        }
      }
    }
    accountBalance.totalUSD = totalUSD;

    account.balance = accountBalance;
    await updateAccount();
  }

  Future<void> updateFungiblesTokens() async {
    final account = await future;
    if (account == null) {
      return;
    }
    final appService = ref.read(appServiceProvider);
    final poolsListRaw = await ref.read(DexPoolProviders.getPoolListRaw.future);

    account.accountTokens = await appService.getFungiblesTokensList(
      account.genesisAddress,
      poolsListRaw,
    );
    await updateAccount();
  }

  Future<void> updateRecentTransactions() async {
    final account = await future;
    if (account == null) {
      return;
    }
    final session = ref.read(sessionNotifierProvider).loggedIn!;
    final appService = ref.read(appServiceProvider);

    account
      ..recentTransactions = await appService.getAccountRecentTransactions(
        account.genesisAddress,
        account.name,
        session.wallet.keychainSecuredInfos,
        account.recentTransactions ?? [],
      )
      ..lastLoadingTransactionInputs = DateTime.now().millisecondsSinceEpoch ~/
          Duration.millisecondsPerSecond;
    await updateAccount();
  }

  Future<void> addCustomTokenAddress(String tokenAddress) async {
    final account = await future;
    if (account == null) {
      return;
    }

    if (Address(address: tokenAddress).isValid() == false) return;
    (account.customTokenAddressList ??= []).add(tokenAddress.toUpperCase());
    await updateAccount();
  }

  Future<void> removeCustomTokenAddress(String tokenAddress) async {
    final account = await future;
    if (account == null) {
      return;
    }

    if (Address(address: tokenAddress).isValid() == false) return;
    (account.customTokenAddressList ??= []).remove(tokenAddress.toUpperCase());
    await updateAccount();
  }

  Future<bool> checkCustomTokenAddress(String tokenAddress) async {
    final account = await future;
    if (account == null) {
      return false;
    }

    if (Address(address: tokenAddress).isValid() == false) return false;
    return (account.customTokenAddressList ?? [])
        .contains(tokenAddress.toUpperCase());
  }

  Future<void> updateNFT() async {
    final account = await future;
    if (account == null) {
      return;
    }
    final session = ref.read(sessionNotifierProvider).loggedIn!;
    final tokenInformation = await ref.read(
      NFTProviders.getNFTList(
        account.genesisAddress,
        account.name,
        session.wallet.keychainSecuredInfos,
      ).future,
    );

    account
      ..accountNFT = tokenInformation.$1
      ..accountNFTCollections = tokenInformation.$2;

    await updateAccount();
  }

  Future<void> clearRecentTransactionsFromCache() async {
    final account = await future;
    if (account == null) {
      return;
    }

    account.recentTransactions = [];
    await updateAccount();
  }

  Future<void> updateAccount() async {
    final account = await future;
    if (account == null) {
      return;
    }

    await AccountHiveDatasource.instance().updateAccount(account);
  }
}
