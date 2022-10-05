/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'dart:io';

// Project imports:
import 'package:aewallet/appstate_container.dart';
import 'package:aewallet/bus/contact_added_event.dart';
import 'package:aewallet/localization.dart';
import 'package:aewallet/model/address.dart';
import 'package:aewallet/model/data/appdb.dart';
import 'package:aewallet/model/data/contact.dart';
import 'package:aewallet/ui/util/dimens.dart';
import 'package:aewallet/ui/util/formatters.dart';
import 'package:aewallet/ui/util/styles.dart';
import 'package:aewallet/ui/util/ui_util.dart';
import 'package:aewallet/ui/widgets/components/app_text_field.dart';
import 'package:aewallet/ui/widgets/components/buttons.dart';
import 'package:aewallet/ui/widgets/components/sheet_header.dart';
import 'package:aewallet/ui/widgets/components/tap_outside_unfocus.dart';
import 'package:aewallet/util/get_it_instance.dart';
import 'package:aewallet/util/haptic_util.dart';
import 'package:aewallet/util/user_data_util.dart';
// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:event_taxi/event_taxi.dart';
// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddContactSheet extends StatefulWidget {
  const AddContactSheet({super.key, this.address});

  final String? address;

  @override
  State<AddContactSheet> createState() => _AddContactSheetState();
}

class _AddContactSheetState extends State<AddContactSheet> {
  FocusNode? _nameFocusNode;
  FocusNode? _addressFocusNode;
  TextEditingController? _nameController;
  TextEditingController? _addressController;

  // State variables
  late bool _addressValid;
  late bool _showPasteButton;
  late bool _addressValidAndUnfocused;
  late String _nameValidationText;
  late String _addressValidationText;

  @override
  void initState() {
    super.initState();
    // Text field initialization
    _nameFocusNode = FocusNode();
    _addressFocusNode = FocusNode();
    _nameController = TextEditingController();
    _addressController = TextEditingController();
    // State initializationrue;
    _addressValid = false;
    _showPasteButton = true;
    _addressValidAndUnfocused = false;
    _nameValidationText = '';
    _addressValidationText = '';
    // On address focus change
    _addressFocusNode!.addListener(() {
      if (_addressFocusNode!.hasFocus) {
        setState(() {
          _addressValidAndUnfocused = false;
        });
        _addressController!.selection = TextSelection.fromPosition(
          TextPosition(offset: _addressController!.text.length),
        );
      } else {
        setState(() {
          if (Address(_addressController!.text).isValid()) {
            _addressValidAndUnfocused = true;
          }
        });
      }
    });
  }

  /// Return true if textfield should be shown,
  /// false if colorized should be shown
  bool _shouldShowTextField() {
    if (widget.address != null) {
      return false;
    } else if (_addressValidAndUnfocused) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalization.of(context)!;
    final theme = StateContainer.of(context).curTheme;

    return TapOutsideUnfocus(
      child: SafeArea(
        minimum:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.035),
        child: Column(
          children: <Widget>[
            SheetHeader(
              title: localizations.addContact,
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: AutoSizeText(
                localizations.addressBookDesc,
                style: AppStyles.textStyleSize16W200Primary(context),
                textAlign: TextAlign.center,
                maxLines: 1,
                stepGranularity: 0.1,
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  AppTextField(
                    topMargin: MediaQuery.of(context).size.height * 0.14,
                    focusNode: _nameFocusNode,
                    controller: _nameController,
                    textInputAction: widget.address != null
                        ? TextInputAction.done
                        : TextInputAction.next,
                    labelText: localizations.contactNameHint,
                    keyboardType: TextInputType.text,
                    style: AppStyles.textStyleSize16W600Primary(context),
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(20),
                      ContactInputFormatter()
                    ],
                    onSubmitted: (String text) {
                      if (widget.address == null) {
                        if (!Address(_addressController!.text).isValid()) {
                          FocusScope.of(context)
                              .requestFocus(_addressFocusNode);
                        } else {
                          FocusScope.of(context).unfocus();
                        }
                      } else {
                        FocusScope.of(context).unfocus();
                      }
                    },
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      _nameValidationText,
                      style: AppStyles.textStyleSize14W600Primary(context),
                    ),
                  ),
                  AppTextField(
                    padding: !_shouldShowTextField()
                        ? const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 15,
                          )
                        : EdgeInsets.zero,
                    focusNode: _addressFocusNode,
                    controller: _addressController,
                    style: _addressValid
                        ? AppStyles.textStyleSize14W100Primary(context)
                        : AppStyles.textStyleSize14W100Text60(context),
                    inputFormatters: <LengthLimitingTextInputFormatter>[
                      LengthLimitingTextInputFormatter(68),
                    ],
                    textInputAction: TextInputAction.done,
                    maxLines: null,
                    autocorrect: false,
                    labelText: localizations.addressHint,
                    prefixButton: kIsWeb == false &&
                            (Platform.isIOS || Platform.isAndroid)
                        ? TextFieldButton(
                            icon: FontAwesomeIcons.qrcode,
                            onPressed: () async {
                              sl.get<HapticUtil>().feedback(
                                    FeedbackType.light,
                                    StateContainer.of(context).activeVibrations,
                                  );
                              UIUtil.cancelLockEvent();
                              final scanResult = await UserDataUtil.getQRData(
                                DataType.address,
                                context,
                              );
                              if (!QRScanErrs.errorList.contains(scanResult)) {
                                if (mounted) {
                                  setState(() {
                                    _addressController!.text = scanResult!;
                                    _addressValidationText = '';
                                    _addressValid = true;
                                    _addressValidAndUnfocused = true;
                                  });
                                  _addressFocusNode!.unfocus();
                                }
                              }
                            },
                          )
                        : null,
                    fadePrefixOnCondition: true,
                    prefixShowFirstCondition: _showPasteButton,
                    suffixButton: TextFieldButton(
                      icon: FontAwesomeIcons.paste,
                      onPressed: () async {
                        if (!_showPasteButton) {
                          return;
                        }
                        sl.get<HapticUtil>().feedback(
                              FeedbackType.light,
                              StateContainer.of(context).activeVibrations,
                            );
                        final data = await UserDataUtil.getClipboardText(
                          DataType.address,
                        );
                        if (data != null) {
                          setState(() {
                            _addressValid = true;
                            _showPasteButton = false;
                            _addressController!.text = data;
                            _addressValidAndUnfocused = true;
                          });
                          _addressFocusNode!.unfocus();
                        } else {
                          setState(() {
                            _showPasteButton = true;
                            _addressValid = false;
                          });
                        }
                      },
                    ),
                    fadeSuffixOnCondition: true,
                    suffixShowFirstCondition: _showPasteButton,
                    onChanged: (String text) {
                      /*Address address = Address(text);
                      if (address.isValid()) {
                            setState(() {
                              _addressValid = true;
                              _showPasteButton = true;
                              _addressController.text =
                                  address.address;
                            });
                            _addressFocusNode.unfocus();
                          } else {
                            setState(() {
                              _showPasteButton = true;
                              _addressValid = false;
                            });
                          }*/
                      setState(() {
                        _showPasteButton = true;
                        _addressValid = false;
                      });
                    },
                    overrideTextFieldWidget: !_shouldShowTextField()
                        ? GestureDetector(
                            onTap: () {
                              if (widget.address != null) {
                                return;
                              }
                              sl.get<HapticUtil>().feedback(
                                    FeedbackType.light,
                                    StateContainer.of(context).activeVibrations,
                                  );
                              setState(() {
                                _addressValidAndUnfocused = false;
                              });
                              Future<void>.delayed(
                                  const Duration(milliseconds: 50), () {
                                FocusScope.of(context)
                                    .requestFocus(_addressFocusNode);
                              });
                            },
                            child: UIUtil.threeLinetextStyleSmallestW400Text(
                              context,
                              widget.address ?? _addressController!.text,
                            ),
                          )
                        : null,
                  ),
                  // Enter Address Error Container
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      _addressValidationText,
                      style: AppStyles.textStyleSize14W600Primary(context),
                    ),
                  ),
                ],
              ),
            ),
            //A column with "Add Contact" and "Close" buttons
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    // Add Contact Button
                    AppButton.buildAppButton(
                      const Key('addContact'),
                      context,
                      AppButtonType.primary,
                      localizations.addContact,
                      Dimens.buttonTopDimens,
                      onPressed: () async {
                        if (await validateForm()) {
                          final newContact = Contact(
                            name: _nameController!.text,
                            address: widget.address ?? _addressController!.text,
                            type: 'externalContact',
                          );
                          await sl.get<DBHelper>().saveContact(newContact);
                          StateContainer.of(context)
                              .requestUpdate(forceUpdateChart: false);
                          EventTaxiImpl.singleton()
                              .fire(ContactAddedEvent(contact: newContact));
                          UIUtil.showSnackbar(
                            localizations.contactAdded
                                .replaceAll('%1', newContact.name!),
                            context,
                            theme.text!,
                            theme.snackBarShadow!,
                          );

                          Navigator.of(context).pop();
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> validateForm() async {
    final localizations = AppLocalization.of(context)!;
    var isValid = true;
    _nameValidationText = '';
    _addressValidationText = '';
    // Address Validations
    // Don't validate address if it came pre-filled in
    if (widget.address == null) {
      if (_addressController!.text.isEmpty) {
        isValid = false;
        setState(() {
          _addressValidationText = localizations.addressMissing;
        });
      } else if (!Address(_addressController!.text).isValid()) {
        isValid = false;
        setState(() {
          _addressValidationText = localizations.invalidAddress;
        });
      } else {
        _addressFocusNode!.unfocus();
        final addressExists = await sl
            .get<DBHelper>()
            .contactExistsWithAddress(_addressController!.text);
        if (addressExists) {
          setState(() {
            isValid = false;
            _addressValidationText = localizations.contactExistsAddress;
          });
        }
      }
    }
    // Name Validations
    if (_nameController!.text.isEmpty) {
      isValid = false;
      setState(() {
        _nameValidationText = localizations.contactNameMissing;
      });
    } else {
      final nameExists =
          await sl.get<DBHelper>().contactExistsWithName(_nameController!.text);
      if (nameExists) {
        setState(() {
          isValid = false;
          _nameValidationText = localizations.contactExistsName;
        });
      }
    }
    return isValid;
  }
}
