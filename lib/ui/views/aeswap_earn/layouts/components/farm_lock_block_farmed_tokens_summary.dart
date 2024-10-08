import 'package:aewallet/application/settings/settings.dart';
import 'package:aewallet/modules/aeswap/ui/views/util/app_styles.dart';
import 'package:aewallet/modules/aeswap/ui/views/util/components/block_info.dart';
import 'package:aewallet/ui/themes/styles.dart';
import 'package:aewallet/ui/views/aeswap_earn/bloc/provider.dart';
import 'package:aewallet/ui/views/aeswap_earn/layouts/components/farm_lock_block_list_single_line_lock.dart';
import 'package:aewallet/util/get_it_instance.dart';
import 'package:aewallet/util/haptic_util.dart';
import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart'
    as aedappfm;
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class FarmLockBlockFarmedTokensSummary extends ConsumerWidget {
  const FarmLockBlockFarmedTokensSummary({
    required this.width,
    required this.height,
    super.key,
  });

  final double width;
  final double height;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final summary = ref.watch(farmLockFormSummaryProvider);
    final farmLock = ref.watch(farmLockFormFarmLockProvider).value;
    final pool = ref.watch(farmLockFormPoolProvider).value;
    const opacity = AppTextStyles.kOpacityText;
    final preferences = ref.watch(SettingsProviders.settings);

    return InkWell(
      onTap:
          farmLock == null || farmLock.userInfos.entries.isEmpty || pool == null
              ? null
              : () async {
                  sl.get<HapticUtil>().feedback(
                        FeedbackType.light,
                        preferences.activeVibrations,
                      );

                  await showBarModalBottomSheet(
                    context: context,
                    backgroundColor:
                        aedappfm.AppThemeBase.sheetBackground.withOpacity(0.2),
                    builder: (BuildContext context) {
                      return const FractionallySizedBox(
                        heightFactor: 0.90,
                        child: aedappfm.ArchethicScrollbar(
                          thumbVisibility: false,
                          child: FarmLockBlockListSingleLineLock(),
                        ),
                      );
                    },
                  );
                },
      child: BlockInfo(
        info: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SelectableText(
                      AppLocalizations.of(context)!
                          .farmLockBlockFarmedTokensSummaryHeader,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: aedappfm.AppThemeBase.secondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Opacity(
                      opacity: opacity,
                      child: summary.when(
                        data: (data) => SelectableText(
                          '\$${data.farmedTokensInFiat.formatNumber(precision: 2)}',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        error: (_, __) => SelectableText(
                          r'$0.00',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        loading: () => const SizedBox(
                          width: 40,
                          height: 40,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: AppTextStyles.kOpacityText,
                          child: SelectableText(
                            '${AppLocalizations.of(context)!.farmLockBlockFarmedTokensSummaryCapitalInvestedLbl}: ',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        Opacity(
                          opacity: opacity,
                          child: summary.when(
                            data: (data) => SelectableText(
                              '\$${data.farmedTokensCapitalInFiat.formatNumber(precision: 2)}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: aedappfm.AppThemeBase.secondaryColor,
                                  ),
                            ),
                            error: (_, __) => SelectableText(
                              r'$0.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: aedappfm.AppThemeBase.secondaryColor,
                                  ),
                            ),
                            loading: () => SelectableText(
                              r'$0.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: aedappfm.AppThemeBase.secondaryColor,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: AppTextStyles.kOpacityText,
                          child: SelectableText(
                            '${AppLocalizations.of(context)!.farmLockBlockFarmedTokensSummaryCapitalRewardsEarnedLbl}: ',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        Opacity(
                          opacity: opacity,
                          child: summary.when(
                            data: (data) => SelectableText(
                              '\$${data.farmedTokensRewardsInFiat.formatNumber(precision: 2)}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: aedappfm.AppThemeBase.secondaryColor,
                                  ),
                            ),
                            error: (_, __) => SelectableText(
                              r'$0.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: aedappfm.AppThemeBase.secondaryColor,
                                  ),
                            ),
                            loading: () => SelectableText(
                              r'$0.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: aedappfm.AppThemeBase.secondaryColor,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Opacity(
                  opacity: opacity,
                  child: summary.when(
                    data: (data) => data.farmedTokensRewardsInFiat > 0
                        ? SelectableText(
                            '(= ${data.farmedTokensRewardsInFiat.formatNumber(precision: 4)} UCO)',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        : const SizedBox.shrink(),
                    error: (_, __) => SelectableText(
                      '(= ${0.0.formatNumber(precision: 4)} UCO)',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    loading: () => SelectableText(
                      '(= ${0.0.formatNumber(precision: 4)} UCO)',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            if (farmLock != null &&
                farmLock.userInfos.entries.isNotEmpty &&
                pool != null)
              Opacity(
                opacity: opacity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppLocalizations.of(
                        context,
                      )!
                          .farmLockTokensSummaryMoreInfo,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Symbols.keyboard_arrow_right,
                      weight: IconSize.weightM,
                      opticalSize: IconSize.opticalSizeM,
                      grade: IconSize.gradeM,
                      size: 16,
                    ),
                  ],
                ),
              ),
          ],
        ),
        width: width,
        height: height,
        backgroundWidget: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                'assets/themes/archethic/coin-img.png',
              ),
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerRight,
              opacity: 0.2,
            ),
          ),
        ),
      ),
    );
  }
}
