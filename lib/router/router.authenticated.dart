part of 'router.dart';

final _authenticatedRoutes = [
  GoRoute(
    path: HomePage.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const HomePage(),
    ),
  ),
  GoRoute(
    path: AddAccountSheet.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: AddAccountSheet(
        seed: state.extra! as String,
      ),
    ),
  ),
  GoRoute(
    path: BuySheet.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const BuySheet(),
    ),
  ),
  GoRoute(
    path: ContactDetail.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: ContactDetail(
        contactAddress: ContactDetailsRouteParams.fromJson(
          state.extra! as Map<String, dynamic>,
        ).contactAddress,
        readOnly: ContactDetailsRouteParams.fromJson(
              state.extra! as Map<String, dynamic>,
            ).readOnly ??
            false,
      ),
    ),
  ),
  GoRoute(
    path: ConnectivityWarning.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const ConnectivityWarning(),
    ),
  ),
  GoRoute(
    path: AddTokenSheet.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const AddTokenSheet(),
    ),
  ),
  GoRoute(
    path: TokenDetailSheet.routerPage,
    pageBuilder: (context, state) {
      final aeToken = const aedappfm.AETokenJsonConverter().fromJson(
        (state.extra! as Map<String, dynamic>)['aeToken'],
      );

      return NoTransitionPage<void>(
        key: state.pageKey,
        child: TokenDetailSheet(
          aeToken: aeToken,
        ),
      );
    },
  ),
  GoRoute(
    path: TransactionInfosSheet.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: TransactionInfosSheet(
        state.extra! as String,
      ),
    ),
  ),
  GoRoute(
    path: TransferSheet.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: TransferSheet(
        transferType:
            (state.extra! as Map<String, dynamic>)['transferType'] == null
                ? null
                : TransferType.values.byName(
                    (state.extra! as Map<String, dynamic>)['transferType']!
                        as String,
                  ),
        recipient: TransferRecipient.fromJson(
          (state.extra! as Map<String, dynamic>)['recipient'],
        ),
        actionButtonTitle: (state.extra!
            as Map<String, dynamic>)['actionButtonTitle'] as String?,
        aeToken: (state.extra! as Map<String, dynamic>)['aeToken'] == null
            ? null
            : const aedappfm.AETokenJsonConverter().fromJson(
                (state.extra! as Map<String, dynamic>)['aeToken'],
              ),
        accountToken:
            (state.extra! as Map<String, dynamic>)['accountToken'] == null
                ? null
                : const AccountTokenConverter().fromJson(
                    (state.extra! as Map<String, dynamic>)['accountToken'],
                  ),
        tokenId: (state.extra! as Map<String, dynamic>)['tokenId'] as String?,
      ),
    ),
  ),
  GoRoute(
    path: NFTDetail.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: NFTDetail(
        name: (state.extra! as Map<String, dynamic>)['name']! as String,
        address: (state.extra! as Map<String, dynamic>)['address']! as String,
        symbol: (state.extra! as Map<String, dynamic>)['symbol']! as String,
        properties: (state.extra! as Map<String, dynamic>)['properties']!
            as Map<String, dynamic>,
        collection: (state.extra! as Map<String, dynamic>)['collection']
            as List<dynamic>,
        tokenId: (state.extra! as Map<String, dynamic>)['tokenId']! as String,
        detailCollection:
            (state.extra! as Map<String, dynamic>)['detailCollection']! as bool,
        nameInCollection: (state.extra!
            as Map<String, dynamic>)['nameInCollection'] as String?,
      ),
    ),
  ),
  GoRoute(
    path: SettingsSheetWallet.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const SettingsSheetWallet(),
    ),
  ),
  GoRoute(
    path: SecurityMenuView.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const SecurityMenuView(),
    ),
  ),
  GoRoute(
    path: CustomizationMenuView.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const CustomizationMenuView(),
    ),
  ),
  GoRoute(
    path: AboutMenuView.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const AboutMenuView(),
    ),
  ),
  GoRoute(
    path: AppSeedBackupSheet.routerPage,
    pageBuilder: (context, state) {
      final extra = state.extra! as Map<String, dynamic>;
      final mnemonic = extra['mnemonic'] as List?;
      final seed = extra['seed'] as String?;
      return NoTransitionPage<void>(
        key: state.pageKey,
        child: AppSeedBackupSheet(
          mnemonic == null ? <String>[] : mnemonic.cast<String>().toList(),
          seed ?? '',
        ),
      );
    },
  ),
  GoRoute(
    path: DAppsBoardSheet.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const DAppsBoardSheet(),
    ),
  ),
  GoRoute(
    path: DAppsBoardWebview.routerPage,
    pageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: DAppsBoardWebview(
        dappUrl: (state.extra! as Map<String, dynamic>)['dappUrl']! as String,
        dappName: (state.extra! as Map<String, dynamic>)['dappName']! as String,
        dappCode: (state.extra! as Map<String, dynamic>)['dappCode']! as String,
      ),
    ),
  ),
];
