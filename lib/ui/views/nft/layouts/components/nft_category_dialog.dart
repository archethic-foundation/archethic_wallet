/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:aewallet/application/nft_category.dart';
import 'package:aewallet/application/settings/theme.dart';
import 'package:aewallet/localization.dart';
import 'package:aewallet/model/nft_category.dart';
import 'package:aewallet/ui/util/styles.dart';
import 'package:aewallet/ui/widgets/components/picker_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NftCategoryDialog {
  static Future<NftCategory?> getDialog(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final pickerItemsList = List<PickerItem>.empty(growable: true);
    final listNftCategory = await ref.read(
      NftCategoryProviders.selectedAccountNftCategories(
        context: context,
      ).future,
    );

    for (final nftCategory in listNftCategory) {
      pickerItemsList.add(
        PickerItem(
          nftCategory.id.toString(),
          null,
          nftCategory.image,
          null,
          nftCategory,
          true,
        ),
      );
    }
    return showDialog<NftCategory>(
      context: context,
      builder: (BuildContext context) {
        final localizations = AppLocalization.of(context)!;
        final theme = ref.watch(ThemeProviders.selectedTheme);
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              insetPadding: const EdgeInsets.only(
                top: 100,
                bottom: 100,
                left: 20,
                right: 20,
              ),
              alignment: Alignment.topCenter,
              title: Column(
                children: [
                  Text(
                    localizations.nftCategory,
                    style: theme.textStyleSize24W700EquinoxPrimary,
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                side: BorderSide(
                  color: theme.text45!,
                ),
              ),
              content: SingleChildScrollView(
                child: PickerWidget(
                  pickerItems: pickerItemsList,
                  onSelected: (value) {
                    Navigator.pop(context, value.value);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
