import 'package:aewallet/application/settings/settings.dart';
import 'package:aewallet/model/blockchain/recent_transaction.dart';
import 'package:aewallet/ui/themes/styles.dart';
import 'package:aewallet/ui/views/transactions/components/template/transaction_hidden_value.dart';
import 'package:aewallet/util/number_util.dart';
import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart'
    as aedappfm;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TokenCreationBalance extends ConsumerWidget {
  const TokenCreationBalance({super.key, required this.transaction});

  final RecentTransaction transaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(SettingsProviders.settings);

    var currency = '';
    if (transaction.tokenInformation != null &&
        transaction.tokenInformation!.type == 'fungible') {
      currency = NumberUtil.formatThousandsStr(
        transaction.tokenInformation!.supply!.formatNumber(),
      );
    } else {
      currency = NumberUtil.formatThousandsStr(
        transaction.tokenInformation!.supply!.toString(),
      );
    }

    final symbol = transaction.tokenInformation!.symbol! == ''
        ? 'NFT'
        : transaction.tokenInformation!.symbol!;

    return Row(
      children: [
        if (settings.showBalances)
          Row(
            children: [
              AutoSizeText(
                '${AppLocalizations.of(context)!.tokenInitialSupply} ',
                style: ArchethicThemeStyles.textStyleSize12W100Primary60,
              ),
              AutoSizeText(
                ' $currency $symbol',
                style: ArchethicThemeStyles.textStyleSize12W100Primary,
              ),
            ],
          )
        else
          const TransactionHiddenValue(),
      ],
    );
  }
}
