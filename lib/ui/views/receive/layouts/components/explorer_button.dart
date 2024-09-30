import 'package:aewallet/application/settings/settings.dart';
import 'package:aewallet/ui/util/dimens.dart';
import 'package:aewallet/ui/widgets/components/app_button_tiny.dart';
import 'package:aewallet/util/get_it_instance.dart';
import 'package:aewallet/util/haptic_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:url_launcher/url_launcher.dart';

class ExplorerButton extends ConsumerWidget {
  const ExplorerButton({required this.address, super.key});

  final String address;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final localizations = AppLocalizations.of(context)!;
    final preferences = ref.watch(SettingsProviders.settings);
    return AppButtonTinyConnectivity(
      localizations.explorer,
      Dimens.buttonBottomDimens,
      key: const Key('share'),
      onPressed: () async {
        sl.get<HapticUtil>().feedback(
              FeedbackType.light,
              preferences.activeVibrations,
            );
        await launchUrl(
          Uri.parse(
            '${ref.read(SettingsProviders.settings).network.getLink()}/explorer/chain?address=$address',
          ),
          mode: LaunchMode.externalApplication,
        );
      },
    );
  }
}