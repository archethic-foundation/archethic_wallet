/// SPDX-License-Identifier: AGPL-3.0-or-later

import 'package:aewallet/application/connectivity_status.dart';
import 'package:aewallet/application/nft/nft_category.dart';
import 'package:aewallet/ui/themes/archethic_theme.dart';
import 'package:aewallet/ui/themes/styles.dart';
import 'package:aewallet/ui/widgets/balance/balance_indicator.dart';
import 'package:aewallet/ui/widgets/components/icon_network_warning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NFTHeader extends ConsumerWidget implements PreferredSizeWidget {
  const NFTHeader({
    super.key,
    required this.currentNftCategoryIndex,
    required this.onPressBack,
    this.displayCategoryName = false,
  });

  final int currentNftCategoryIndex;
  final bool displayCategoryName;
  final Function()? onPressBack;

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nftCategories = ref
        .watch(
          NftCategoryProviders.selectedAccountNftCategories(
            context: context,
          ),
        )
        .valueOrNull;

    if (nftCategories == null) return const SizedBox();

    final nftCategory = nftCategories
        .where(
          (element) => element.id == currentNftCategoryIndex,
        )
        .first;
    final connectivityStatusProvider = ref.watch(connectivityStatusProviders);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsetsDirectional.only(
                start: smallScreen(context) ? 15 : 20,
              ),
              height: 50,
              width: 50,
              child: BackButton(
                key: const Key('back'),
                color: ArchethicTheme.text,
                onPressed: onPressBack,
              ),
            ),
          ],
        ),
        const BalanceIndicatorWidget(
          displaySwitchButton: false,
          allDigits: false,
          displayLabel: false,
        ),
        if (connectivityStatusProvider == ConnectivityStatus.isDisconnected)
          const IconNetworkWarning()
        else
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: Column(
              children: [
                if (displayCategoryName)
                  Text(
                    nftCategory.name!,
                    textAlign: TextAlign.center,
                    style: ArchethicThemeStyles.textStyleSize12W100Primary,
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
