/// SPDX-License-Identifier: AGPL-3.0-or-later
// ignore_for_file: avoid_unnecessary_containers

// Dart imports:
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

// Flutter imports:
import 'package:aewallet/bus/nft_file_add_event.dart';
import 'package:aewallet/model/data/account_token.dart';
import 'package:aewallet/model/data/token_informations.dart';
import 'package:aewallet/model/data/token_informations_property.dart';
import 'package:aewallet/ui/util/routes.dart';
import 'package:aewallet/ui/util/ui_util.dart';
import 'package:aewallet/ui/views/nft/add_nft_file.dart';
import 'package:aewallet/ui/views/nft/nft_card.dart';
import 'package:event_taxi/event_taxi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';

// Project imports:
import 'package:aewallet/appstate_container.dart';
import 'package:aewallet/localization.dart';
import 'package:aewallet/model/primary_currency.dart';
import 'package:aewallet/service/app_service.dart';
import 'package:aewallet/ui/util/dimens.dart';
import 'package:aewallet/ui/util/formatters.dart';
import 'package:aewallet/ui/util/styles.dart';
import 'package:aewallet/ui/views/nft/add_nft_collection_confirm.dart';
import 'package:aewallet/ui/widgets/components/app_text_field.dart';
import 'package:aewallet/ui/widgets/components/buttons.dart';
import 'package:aewallet/ui/widgets/components/sheet_util.dart';
import 'package:aewallet/ui/widgets/components/tap_outside_unfocus.dart';
import 'package:aewallet/util/currency_util.dart';
import 'package:aewallet/util/get_it_instance.dart';
import 'package:aewallet/util/haptic_util.dart';

class AddNFTCollection extends StatefulWidget {
  const AddNFTCollection({
    super.key,
    this.primaryCurrency,
  });

  final PrimaryCurrencySetting? primaryCurrency;

  @override
  State<AddNFTCollection> createState() => _AddNFTCollectionState();
}

enum PrimaryCurrency { network, selected }

class _AddNFTCollectionState extends State<AddNFTCollection> {
  FocusNode? collectionNameFocusNode;
  FocusNode? collectionSymbolFocusNode;
  TextEditingController? collectionNameController;
  TextEditingController? collectionSymbolController;
  String? collectionNameValidationText;
  String? collectionSymbolValidationText;

  double feeEstimation = 0.0;
  bool? _isPressed;
  bool validRequest = true;
  PrimaryCurrency primaryCurrency = PrimaryCurrency.network;
  int? supply;
  Token? token = Token(
      name: '',
      supply: 1,
      symbol: '',
      type: 'non-fungible',
      tokenProperties: List<List<TokenProperty>>.empty(growable: true));

  StreamSubscription<NftFileAddEvent>? _nftFileAddEventSub;

  void _registerBus() {
    _nftFileAddEventSub = EventTaxiImpl.singleton()
        .registerTo<NftFileAddEvent>()
        .listen((NftFileAddEvent event) {
      token!.tokenProperties!.add(event.tokenProperties!);
      setState(() {});
    });
  }

  void _destroyBus() {
    if (_nftFileAddEventSub != null) {
      _nftFileAddEventSub!.cancel();
    }
  }

  @override
  void initState() {
    _registerBus();

    super.initState();
    if (widget.primaryCurrency!.primaryCurrency.name ==
        PrimaryCurrencySetting(AvailablePrimaryCurrency.native)
            .primaryCurrency
            .name) {
      primaryCurrency = PrimaryCurrency.network;
    } else {
      primaryCurrency = PrimaryCurrency.selected;
    }
    _isPressed = false;
    collectionNameFocusNode = FocusNode();
    collectionSymbolFocusNode = FocusNode();
    collectionNameController = TextEditingController();
    collectionSymbolController = TextEditingController();
    supply = 1;

    collectionNameValidationText = '';
    collectionSymbolValidationText = '';
  }

  @override
  void dispose() {
    _destroyBus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double bottom = MediaQuery.of(context).viewInsets.bottom;
    return TapOutsideUnfocus(
      child: SafeArea(
        minimum:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.035),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  width: 60,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 5,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: StateContainer.of(context).curTheme.text60,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 140),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 15,
                          ),
                          AutoSizeText(
                            AppLocalization.of(context)!.createNFTCollection,
                            style: AppStyles.textStyleSize24W700EquinoxPrimary(
                                context),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            stepGranularity: 0.1,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          StateContainer.of(context).showBalance
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    primaryCurrency == PrimaryCurrency.selected
                                        ? Column(
                                            children: [
                                              _balanceSelected(context, true),
                                              _balanceNetwork(context, false),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              _balanceNetwork(context, true),
                                              _balanceSelected(context, false),
                                            ],
                                          ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.change_circle),
                                      alignment: Alignment.centerRight,
                                      color: StateContainer.of(context)
                                          .curTheme
                                          .textFieldIcon,
                                      onPressed: () {
                                        sl.get<HapticUtil>().feedback(
                                            FeedbackType.light,
                                            StateContainer.of(context)
                                                .activeVibrations);
                                        if (primaryCurrency ==
                                            PrimaryCurrency.network) {
                                          setState(() {
                                            primaryCurrency =
                                                PrimaryCurrency.selected;
                                          });
                                        } else {
                                          setState(() {
                                            primaryCurrency =
                                                PrimaryCurrency.network;
                                          });
                                        }
                                      },
                                    ),
                                  ],
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 60,
                  height: 40,
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      collectionInfos(context, bottom),
                      getNFTListPreview(context),
                      feeEstimation > 0
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Text(
                                '${AppLocalization.of(context)!.estimatedFees}: $feeEstimation ${StateContainer.of(context).curNetwork.getNetworkCryptoCurrencyLabel()}',
                                style: AppStyles.textStyleSize14W100Primary(
                                    context),
                                textAlign: TextAlign.justify,
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Text(
                                AppLocalization.of(context)!
                                    .estimatedFeesAddTokenNote,
                                style: AppStyles.textStyleSize14W100Primary(
                                    context),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      _isPressed == true ||
                              (_isPressed == false &&
                                  (collectionNameController!.text.isEmpty ||
                                      collectionSymbolController!.text.isEmpty))
                          ? AppButton.buildAppButton(
                              const Key('createNFTCollection'),
                              context,
                              AppButtonType.primaryOutline,
                              AppLocalization.of(context)!.createNFTCollection,
                              Dimens.buttonTopDimens,
                              onPressed: () {},
                            )
                          : AppButton.buildAppButton(
                              const Key('createNFTCollection'),
                              context,
                              AppButtonType.primary,
                              AppLocalization.of(context)!.createNFTCollection,
                              Dimens.buttonTopDimens,
                              onPressed: () async {
                                setState(() {
                                  _isPressed = true;
                                });

                                validRequest = await _validateRequest(context);
                                if (validRequest) {
                                  Sheets.showAppHeightNineSheet(
                                    onDisposed: () {
                                      if (mounted) {
                                        setState(() {
                                          _isPressed = false;
                                        });
                                      }
                                    },
                                    context: context,
                                    widget: AddNFTCollectionConfirm(
                                      token: token,
                                      feeEstimation: feeEstimation,
                                    ),
                                  );
                                } else {
                                  setState(() {
                                    _isPressed = false;
                                  });
                                  Navigator.of(context).popUntil(
                                      RouteUtils.withNameLike('/home'));
                                }
                              },
                            ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _isPressed == true ||
                              (_isPressed == false &&
                                  (collectionNameController!.text.isEmpty ||
                                      collectionSymbolController!.text.isEmpty))
                          ? AppButton.buildAppButton(
                              const Key('saveNFTCollectionInLocal'),
                              context,
                              AppButtonType.primaryOutline,
                              AppLocalization.of(context)!
                                  .saveNFTCollectionInLocal,
                              Dimens.buttonBottomDimens,
                              onPressed: () {},
                            )
                          : AppButton.buildAppButton(
                              const Key('saveNFTCollectionInLocal'),
                              context,
                              AppButtonType.primary,
                              AppLocalization.of(context)!
                                  .saveNFTCollectionInLocal,
                              Dimens.buttonBottomDimens,
                              onPressed: () async {
                                setState(() {
                                  _isPressed = true;
                                });

                                validRequest = await _validateRequest(context);
                                if (validRequest) {
                                  TokenInformations tokenInformations =
                                      TokenInformations();
                                  tokenInformations.tokenProperties = List<
                                          List<
                                              TokenInformationsProperty>>.empty(
                                      growable: true);
                                  tokenInformations
                                      .tokenToTokenInformations(token!);
                                  tokenInformations.onChain = false;
                                  if (StateContainer.of(context)
                                          .appWallet!
                                          .appKeychain!
                                          .getAccountSelected()!
                                          .accountNFT ==
                                      null) {
                                    StateContainer.of(context)
                                            .appWallet!
                                            .appKeychain!
                                            .getAccountSelected()!
                                            .accountNFT =
                                        List<AccountToken>.empty(
                                            growable: true);
                                  }
                                  StateContainer.of(context)
                                      .appWallet!
                                      .appKeychain!
                                      .getAccountSelected()!
                                      .accountNFT!
                                      .add(AccountToken(
                                          tokenInformations:
                                              tokenInformations));
                                  UIUtil.showSnackbar(
                                      'Saved',
                                      context,
                                      StateContainer.of(context).curTheme.text!,
                                      StateContainer.of(context)
                                          .curTheme
                                          .snackBarShadow!);
                                  Navigator.of(context).pop();
                                }
                                setState(() {
                                  _isPressed = false;
                                });
                              },
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget collectionInfos(BuildContext context, double bottom) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: bottom + 80),
            child: Column(
              children: <Widget>[
                AppTextField(
                  focusNode: collectionNameFocusNode,
                  controller: collectionNameController,
                  cursorColor: StateContainer.of(context).curTheme.text,
                  textInputAction: TextInputAction.next,
                  labelText: AppLocalization.of(context)!.tokenNameHint,
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  style: AppStyles.textStyleSize16W600Primary(context),
                  inputFormatters: <LengthLimitingTextInputFormatter>[
                    LengthLimitingTextInputFormatter(40),
                  ],
                  onChanged: (String text) async {
                    double fee = await getFee(context);
                    // Always reset the error message to be less annoying
                    setState(() {
                      feeEstimation = fee;
                      token!.name = text;
                    });
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(collectionNameValidationText!,
                      style: AppStyles.textStyleSize14W600Primary(context)),
                ),
                AppTextField(
                  focusNode: collectionSymbolFocusNode,
                  controller: collectionSymbolController,
                  cursorColor: StateContainer.of(context).curTheme.text,
                  textInputAction: TextInputAction.next,
                  labelText: AppLocalization.of(context)!.tokenSymbolHint,
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  style: AppStyles.textStyleSize16W600Primary(context),
                  inputFormatters: [
                    UpperCaseTextFormatter(),
                    LengthLimitingTextInputFormatter(4),
                  ],
                  onChanged: (String text) async {
                    double fee = await getFee(context);
                    // Always reset the error message to be less annoying
                    setState(() {
                      feeEstimation = fee;
                      token!.symbol = text;
                    });
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(collectionSymbolValidationText!,
                      style: AppStyles.textStyleSize14W600Primary(context)),
                ),
                Row(
                  children: <Widget>[
                    collectionNameController!.text.isNotEmpty &&
                            collectionSymbolController!.text.isNotEmpty
                        ? AppButton.buildAppButtonTiny(
                            const Key('addNFT'),
                            context,
                            AppButtonType.primary,
                            AppLocalization.of(context)!.addNFTFile,
                            Dimens.buttonBottomDimens, onPressed: () {
                            Sheets.showAppHeightNineSheet(
                                context: context,
                                widget: const AddNFTFile(
                                    process: AddNFTFileProcess.collection));
                          })
                        : AppButton.buildAppButtonTiny(
                            const Key('addNFT'),
                            context,
                            AppButtonType.primaryOutline,
                            AppLocalization.of(context)!.addNFTFile,
                            Dimens.buttonBottomDimens,
                            onPressed: () {})
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _validateRequest(BuildContext context) async {
    bool isValid = true;
    setState(() {
      collectionNameValidationText = '';
      collectionSymbolValidationText = '';
    });
    if (collectionNameController!.text.isEmpty) {
      isValid = false;
      setState(() {
        collectionNameValidationText =
            AppLocalization.of(context)!.tokenNameMissing;
      });
    }
    if (collectionSymbolController!.text.isEmpty) {
      isValid = false;
      setState(() {
        collectionSymbolValidationText =
            AppLocalization.of(context)!.tokenSymbolMissing;
      });
    }

    // Estimation of fees
    feeEstimation = await getFee(context);
    return isValid;
  }

  Future<double> getFee(BuildContext context) async {
    double fee = 0;
    if (collectionSymbolController!.text.isEmpty ||
        collectionNameController!.text.isEmpty) {
      return fee;
    }
    try {
      final String? seed = await StateContainer.of(context).getSeed();
      final String originPrivateKey = sl.get<ApiService>().getOriginKey();
      fee = await sl.get<AppService>().getFeesEstimationCreateToken(
          originPrivateKey,
          seed!,
          token!,
          StateContainer.of(context)
              .appWallet!
              .appKeychain!
              .getAccountSelected()!
              .name!);
    } catch (e) {
      fee = 0;
    }
    return fee;
  }

  Widget _balanceNetwork(BuildContext context, bool primary) {
    return Container(
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          text: '',
          children: <InlineSpan>[
            if (primary == false)
              TextSpan(
                text: '(',
                style: primary
                    ? AppStyles.textStyleSize16W100Primary(context)
                    : AppStyles.textStyleSize14W100Primary(context),
              ),
            TextSpan(
              text:
                  '${StateContainer.of(context).appWallet!.appKeychain!.getAccountSelected()!.balance!.nativeTokenValueToString()} ${StateContainer.of(context).appWallet!.appKeychain!.getAccountSelected()!.balance!.nativeTokenName!}',
              style: primary
                  ? AppStyles.textStyleSize16W700Primary(context)
                  : AppStyles.textStyleSize14W700Primary(context),
            ),
            if (primary == false)
              TextSpan(
                text: ')',
                style: primary
                    ? AppStyles.textStyleSize16W100Primary(context)
                    : AppStyles.textStyleSize14W100Primary(context),
              ),
          ],
        ),
      ),
    );
  }

  Widget _balanceSelected(BuildContext context, bool primary) {
    return Container(
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          text: '',
          children: <InlineSpan>[
            if (primary == false)
              TextSpan(
                text: '(',
                style: primary
                    ? AppStyles.textStyleSize16W100Primary(context)
                    : AppStyles.textStyleSize14W100Primary(context),
              ),
            TextSpan(
              text: CurrencyUtil.getConvertedAmount(
                  StateContainer.of(context).curCurrency.currency.name,
                  StateContainer.of(context)
                      .appWallet!
                      .appKeychain!
                      .getAccountSelected()!
                      .balance!
                      .fiatCurrencyValue!),
              style: primary
                  ? AppStyles.textStyleSize16W700Primary(context)
                  : AppStyles.textStyleSize14W700Primary(context),
            ),
            if (primary == false)
              TextSpan(
                text: ')',
                style: primary
                    ? AppStyles.textStyleSize16W100Primary(context)
                    : AppStyles.textStyleSize14W100Primary(context),
              ),
          ],
        ),
      ),
    );
  }

  Widget getNFTListPreview(BuildContext context) {
    return Column(
      children: <Widget>[
        // Settings items
        ListView.separated(
            itemCount: token!.tokenProperties!.length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
            shrinkWrap: true,
            itemBuilder: (context, index) {
              List<TokenProperty> properties = token!.tokenProperties![index];
              Image? image;
              String name = '';
              String typeMime = '';
              String description = '';
              Uint8List? imageDecoded;
              for (TokenProperty tokenProperty in properties) {
                switch (tokenProperty.name) {
                  case 'file':
                    // final directory = await getApplicationDocumentsDirectory();
                    // file = File(base64Decode(tokenProperty.value));
                    imageDecoded = base64Decode(tokenProperty.value!);
                    image = Image.memory(
                      imageDecoded,
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      fit: BoxFit.cover,
                    );
                    break;
                  case 'type/mime':
                    typeMime = tokenProperty.value!;
                    break;
                  case 'name':
                    name = tokenProperty.value!;
                    break;
                  case 'description':
                    description = tokenProperty.value!;
                    break;
                  default:
                    break;
                }
              }
              return NFTCard(
                onTap: () {},
                heroTag: name,
                image: imageDecoded!,
                description: description,
                name: name,
              );
            }),
      ],
    );
  }
}
