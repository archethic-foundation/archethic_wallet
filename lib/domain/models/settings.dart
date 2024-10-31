import 'package:aewallet/model/available_language.dart';
import 'package:aewallet/model/available_networks.dart';
import 'package:aewallet/model/primary_currency.dart';
import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart'
    as aedappfm;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

enum MainScreenTab { accountTab, transactionTab, swapTab, earnTab, bridgeTab }

@freezed
class Settings with _$Settings {
  const factory Settings({
    required AvailablePrimaryCurrency primaryCurrency,
    required AvailableLanguage language,
    required NetworksSetting network,
    required String languageSeed,
    required bool firstLaunch,
    required bool showBalances,
    required bool activeRPCServer,
    required int mainScreenCurrentPage,
    required bool showPriceChart,
    required aedappfm.MarketPriceHistoryInterval priceChartIntervalOption,
  }) = _Settings;

  factory Settings.empty() => const Settings(
        activeRPCServer: true,
        firstLaunch: true,
        language: AvailableLanguage.english,
        languageSeed: '',
        mainScreenCurrentPage: 0,
        network: NetworksSetting(
          network: AvailableNetworks.archethicMainNet,
          networkDevEndpoint: '',
        ),
        primaryCurrency:
            AvailablePrimaryCurrency(AvailablePrimaryCurrencyEnum.native),
        showBalances: true,
        showPriceChart: true,
        priceChartIntervalOption: aedappfm.MarketPriceHistoryInterval.hour,
      );

  const Settings._();
}
