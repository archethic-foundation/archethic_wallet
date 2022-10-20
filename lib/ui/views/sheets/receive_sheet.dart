/// SPDX-License-Identifier: AGPL-3.0-or-later
// Project imports:
import 'package:aewallet/application/language.dart';
import 'package:aewallet/application/settings.dart';
import 'package:aewallet/application/theme.dart';
import 'package:aewallet/appstate_container.dart';
import 'package:aewallet/localization.dart';
import 'package:aewallet/ui/util/dimens.dart';
import 'package:aewallet/ui/util/styles.dart';
import 'package:aewallet/ui/util/ui_util.dart';
import 'package:aewallet/ui/widgets/components/app_button.dart';
import 'package:aewallet/ui/widgets/components/sheet_header.dart';
import 'package:aewallet/util/case_converter.dart';
import 'package:aewallet/util/get_it_instance.dart';
import 'package:aewallet/util/haptic_util.dart';
// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

class ReceiveSheet extends ConsumerWidget {
  const ReceiveSheet({this.address, super.key});

  final String? address;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalization.of(context)!;
    final theme = ref.watch(ThemeProviders.selectedTheme);
    final language = ref.watch(LanguageProviders.selectedLanguage);
    final preferences = ref.watch(SettingsProviders.settings);
    return SafeArea(
      minimum:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.035),
      child: Column(
        children: <Widget>[
          SheetHeader(
            title: localizations.receive,
            widgetRight: Container(
              width: 60,
              height: 50,
              margin: const EdgeInsetsDirectional.only(top: 10, start: 10),
              child: TextButton(
                onPressed: () {
                  sl.get<HapticUtil>().feedback(
                        FeedbackType.light,
                        preferences.activeVibrations,
                      );
                  Clipboard.setData(ClipboardData(text: address));
                  UIUtil.showSnackbar(
                    localizations.addressCopied,
                    context,
                    ref,
                    theme.text!,
                    theme.snackBarShadow!,
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.paste,
                  size: 24,
                  color: theme.text,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                minimum: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.035,
                ),
                child: Column(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        sl.get<HapticUtil>().feedback(
                              FeedbackType.light,
                              preferences.activeVibrations,
                            );
                        Clipboard.setData(ClipboardData(text: address));
                        UIUtil.showSnackbar(
                          localizations.addressCopied,
                          context,
                          ref,
                          theme.text!,
                          theme.snackBarShadow!,
                        );
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Material(
                            borderRadius: BorderRadius.circular(16),
                            child: SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: 200,
                                        margin: const EdgeInsets.all(8),
                                        child: AutoSizeText(
                                          localizations.addressInfos,
                                          style:
                                              theme.textStyleSize16W700Primary,
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        height: 150,
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: QrImage(
                                          foregroundColor: theme.text,
                                          data: address!,
                                          size: 150,
                                          gapless: false,
                                        ),
                                      ),
                                      Container(
                                        width: 200,
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.all(8),
                                        child: Column(
                                          children: <Widget>[
                                            AutoSizeText(
                                              CaseChange.toUpperCase(
                                                address!.substring(0, 16),
                                                language.getLocaleString(),
                                              ),
                                              style: theme
                                                  .textStyleSize12W100Primary,
                                            ),
                                            AutoSizeText(
                                              CaseChange.toUpperCase(
                                                address!.substring(16, 32),
                                                language.getLocaleString(),
                                              ),
                                              style: theme
                                                  .textStyleSize12W100Primary,
                                            ),
                                            AutoSizeText(
                                              CaseChange.toUpperCase(
                                                address!.substring(32, 48),
                                                language.getLocaleString(),
                                              ),
                                              style: theme
                                                  .textStyleSize12W100Primary,
                                            ),
                                            AutoSizeText(
                                              CaseChange.toUpperCase(
                                                address!.substring(48),
                                                language.getLocaleString(),
                                              ),
                                              style: theme
                                                  .textStyleSize12W100Primary,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  AppButton(
                    AppButtonType.primary,
                    localizations.viewExplorer,
                    Dimens.buttonTopDimens,
                    icon: Icon(
                      Icons.more_horiz,
                      color: theme.text,
                    ),
                    key: const Key('viewExplorer'),
                    onPressed: () async {
                      UIUtil.showWebview(
                        context,
                        '${await StateContainer.of(context).curNetwork.getLink()}/explorer/transaction/${address!}',
                        '',
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  AppButton(
                    AppButtonType.primary,
                    localizations.share,
                    Dimens.buttonBottomDimens,
                    icon: Icon(
                      Icons.share,
                      color: theme.text,
                    ),
                    key: const Key('share'),
                    onPressed: () {
                      final box = context.findRenderObject() as RenderBox?;
                      final textToShare = address!.toUpperCase();
                      Share.share(
                        textToShare,
                        sharePositionOrigin:
                            box!.localToGlobal(Offset.zero) & box.size,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
