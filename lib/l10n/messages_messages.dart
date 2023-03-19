// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, always_declare_return_types

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef String MessageIfAbsent(String? messageStr, List<Object>? args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'messages';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutGeneralTermsAndConditions":
            MessageLookupByLibrary.simpleMessage("General Terms & Conditions"),
        "aboutHeader": MessageLookupByLibrary.simpleMessage("About"),
        "aboutPrivacyPolicy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "aboutWalletServiceTerms":
            MessageLookupByLibrary.simpleMessage("Wallet Service Terms"),
        "accountHeader": MessageLookupByLibrary.simpleMessage("Account"),
        "accountsKeychainAddressHeader":
            MessageLookupByLibrary.simpleMessage("Your keychain\'s address"),
        "accountsListDescription": MessageLookupByLibrary.simpleMessage(
            "Your keychain contains the following services and accounts."),
        "activateNotifications":
            MessageLookupByLibrary.simpleMessage("Activate notifications"),
        "activateVibrations":
            MessageLookupByLibrary.simpleMessage("Activate vibrations"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Add account"),
        "addAccountConfirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to add in your keychain \"%1?\""),
        "addAccountConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "Do you confirm the creation of the following Account?"),
        "addAccountConfirmed": MessageLookupByLibrary.simpleMessage(
            "The account was created with %1 confirmations on %2"),
        "addAccountConfirmed1": MessageLookupByLibrary.simpleMessage(
            "The account was created with %1 confirmation on %2"),
        "addAccountExists": MessageLookupByLibrary.simpleMessage(
            "This name already exists in your keychain."),
        "addContact": MessageLookupByLibrary.simpleMessage("Add Contact"),
        "addContactDescription": MessageLookupByLibrary.simpleMessage(
            "To create a contact, you must specify a name and address.\n\nConcerning the address, it allows to send funds or tokens to your contact. You can either type it, copy and paste it or get it from a QR Code.\n\nThe public key is automatically retrieved unless your contact has never made a transaction on the Archethic network. In this case, you just have to ask him/her and either enter it, copy and paste it or retrieve it from a QR Code.\nThe public key allows you to give your contact access rights to information that you want to protect (specific properties associated with NFTs, messages, ...).or to verify the authenticity of an information by checking that it comes from this contact."),
        "addNFTFile": MessageLookupByLibrary.simpleMessage("Add a NFT"),
        "addNFTProperty": MessageLookupByLibrary.simpleMessage("Add property"),
        "addNftNewCategory":
            MessageLookupByLibrary.simpleMessage("Add new category (Soon...)"),
        "addPublicKeyHeader":
            MessageLookupByLibrary.simpleMessage("Add access"),
        "addServiceCommandReceivedNotification":
            MessageLookupByLibrary.simpleMessage(
                "Application %1 wants to add a service."),
        "addTokenConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "Do you confirm the creation of the following Token?"),
        "addTokenConfirmed": MessageLookupByLibrary.simpleMessage(
            "The token was created with %1 confirmations on %2"),
        "addTokenConfirmed1": MessageLookupByLibrary.simpleMessage(
            "The token was created with %1 confirmation on %2"),
        "addressBookDesc": MessageLookupByLibrary.simpleMessage(
            "Create and manage frequently-used addresses"),
        "addressBookHeader":
            MessageLookupByLibrary.simpleMessage("Address book"),
        "addressCopied": MessageLookupByLibrary.simpleMessage("Address Copied"),
        "addressHint": MessageLookupByLibrary.simpleMessage("Enter Address"),
        "addressInfos": MessageLookupByLibrary.simpleMessage(
            "My public address to receive funds"),
        "addressMissing":
            MessageLookupByLibrary.simpleMessage("Please Enter an Address"),
        "aeWebsiteLinkDesc":
            MessageLookupByLibrary.simpleMessage("Visit the Archethic website"),
        "aeWebsiteLinkHeader":
            MessageLookupByLibrary.simpleMessage("Archethic Website"),
        "aewebHosting": MessageLookupByLibrary.simpleMessage("AEWeb hosting"),
        "amountCopied": MessageLookupByLibrary.simpleMessage("Amount copied"),
        "amountMissing":
            MessageLookupByLibrary.simpleMessage("Please Enter an Amount"),
        "amountZero":
            MessageLookupByLibrary.simpleMessage("Your amount should be > 0"),
        "appWalletInitInProgress": MessageLookupByLibrary.simpleMessage(
            "Your wallet is being configured..."),
        "archethicDoesntKeepCopy": MessageLookupByLibrary.simpleMessage(
            "As a reminder, Archethic doesn\'t keep any copy."),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "attempt": MessageLookupByLibrary.simpleMessage("Attempt: "),
        "authMethod": MessageLookupByLibrary.simpleMessage("Auth. Method"),
        "autoLockHeader": MessageLookupByLibrary.simpleMessage("Auto Lock"),
        "availableAfterCreation":
            MessageLookupByLibrary.simpleMessage("Available after creation :"),
        "availableAfterMint":
            MessageLookupByLibrary.simpleMessage("Available after mint :"),
        "availableAfterTransfer":
            MessageLookupByLibrary.simpleMessage("Available after transfer :"),
        "availableCategories":
            MessageLookupByLibrary.simpleMessage("Available categories"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "backupSafetyLabel1": MessageLookupByLibrary.simpleMessage(
            "On the next screen, you will see your recovery phrase."),
        "backupSafetyLabel2":
            MessageLookupByLibrary.simpleMessage("What is a recovery phrase?"),
        "backupSafetyLabel3": MessageLookupByLibrary.simpleMessage(
            "A recovery phrase is essentially a human-readable form of your crypto\'s wallet private key, and is displayed as 24 mnemonic words. After mastering the mnemonic words, you can restore your wallet at will. Please keep the words properly and don\'t leak them to anyone."),
        "backupSafetyLabel4":
            MessageLookupByLibrary.simpleMessage("How to back up?"),
        "backupSafetyLabel5": MessageLookupByLibrary.simpleMessage(
            "Write down the mnemonic words in the correct order on a piece of paper and store them in a safe place.\nPlease don\'t store the recovery phrase on electronic devices in any form, including sreenshot.\nRemember the safety of the recovery phrase is relevant to the safety of your digital assets"),
        "backupSafetyLabel6":
            MessageLookupByLibrary.simpleMessage("Insecure ways of backup :"),
        "backupSafetyLabel7": MessageLookupByLibrary.simpleMessage(
            "1. Screenshot\n2. Take a photo"),
        "backupSecretPhrase":
            MessageLookupByLibrary.simpleMessage("Backup Secret Phrase"),
        "biometricsMethod": MessageLookupByLibrary.simpleMessage("Biometrics"),
        "biometricsUnirisMethod":
            MessageLookupByLibrary.simpleMessage("Uniris Biometrics (Soon...)"),
        "blogHeader": MessageLookupByLibrary.simpleMessage("Archethic Blog"),
        "build": MessageLookupByLibrary.simpleMessage("Build :"),
        "buy": MessageLookupByLibrary.simpleMessage("Buy"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "changeCurrencyDesc": MessageLookupByLibrary.simpleMessage(
            "Select the fiat currency you would like to display alongside %1"),
        "changeCurrencyHeader":
            MessageLookupByLibrary.simpleMessage("Currency"),
        "chart": MessageLookupByLibrary.simpleMessage("Chart"),
        "chartOptionLabel14d": MessageLookupByLibrary.simpleMessage("14d"),
        "chartOptionLabel1h": MessageLookupByLibrary.simpleMessage("1h"),
        "chartOptionLabel1y": MessageLookupByLibrary.simpleMessage("1y"),
        "chartOptionLabel200d": MessageLookupByLibrary.simpleMessage("200d"),
        "chartOptionLabel24h": MessageLookupByLibrary.simpleMessage("24h"),
        "chartOptionLabel30d": MessageLookupByLibrary.simpleMessage("30d"),
        "chartOptionLabel60d": MessageLookupByLibrary.simpleMessage("60d"),
        "chartOptionLabel7d": MessageLookupByLibrary.simpleMessage("7d"),
        "chartOptionLabelAll": MessageLookupByLibrary.simpleMessage("All"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "configureSecurityExplanation": MessageLookupByLibrary.simpleMessage(
            "To access to this application or to validate important manipulations, we offer several ways to protect yourself."),
        "configureSecurityExplanationBiometrics":
            MessageLookupByLibrary.simpleMessage(
                "It\'s a method of biometric identification that uses that body measures, in this case face and head, to verify the identity of a person through its facial biometric pattern and data."),
        "configureSecurityExplanationPIN": MessageLookupByLibrary.simpleMessage(
            "A personal identification number (PIN) is a numeric passcode used in the process of authenticating a user accessing a system."),
        "configureSecurityExplanationPassword":
            MessageLookupByLibrary.simpleMessage(
                "A password is a string of characters used to verify the identity of a user during the authentication process. Avoid words that are too easy to find (date of birth, first name of your children, etc...)"),
        "configureSecurityExplanationUnirisBiometrics":
            MessageLookupByLibrary.simpleMessage(
                "Embedded in the blockchain, the biometric technology provided by Uniris allows anyone to identify themselves without difficulty and without storing any biometric data. This is an access control that is forgery-proof and without disclosure."),
        "configureSecurityExplanationYubikey": MessageLookupByLibrary.simpleMessage(
            "The YubiKey is a device that makes two-factor authentication as simple as possible. Instead of a code being texted to you, or generated by an app on your phone, you press a button on your YubiKey."),
        "configureSecurityIntro": MessageLookupByLibrary.simpleMessage(
            "It\'s important to protect the access to your wallet!"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmBiometrics":
            MessageLookupByLibrary.simpleMessage("Authenticate to Confirm"),
        "confirmPasswordHint":
            MessageLookupByLibrary.simpleMessage("Confirm the password"),
        "confirmSecretPhrase":
            MessageLookupByLibrary.simpleMessage("Confirm your secret phrase."),
        "confirmSecretPhraseExplanation": MessageLookupByLibrary.simpleMessage(
            "Select the words to put them in the correct order."),
        "confirmSecretPhraseKo":
            MessageLookupByLibrary.simpleMessage("The order is not correct."),
        "connectivityWarningDesc": MessageLookupByLibrary.simpleMessage(
            "You can use the application when your connection is interrupted, but the information may be outdated and some features are disabled."),
        "connectivityWarningHeader": MessageLookupByLibrary.simpleMessage(
            "Check your internet connection."),
        "consensusNotReached": MessageLookupByLibrary.simpleMessage(
            "The consensus is not reached. Please retry your request..."),
        "contactAdded":
            MessageLookupByLibrary.simpleMessage("%1 added to address book."),
        "contactAddressInfoExternalContact": MessageLookupByLibrary.simpleMessage(
            "The following QR Code contains the address of your contact.\n\nYou can use this address to send funds or tokens to your contact.\n\nTo use it, you can :\n- either scan the QR Code above,\n- or click on it to copy the address."),
        "contactAddressInfoKeychainService": MessageLookupByLibrary.simpleMessage(
            "The following QR Code contains the address of your account.\n\nYou can use this address to receive funds or tokens on this account.\n\nTo use it, you can :\n- either scan the QR Code above,\n- or click on it to copy the address."),
        "contactAddressTabHeader":
            MessageLookupByLibrary.simpleMessage("Address"),
        "contactExistsAddress": MessageLookupByLibrary.simpleMessage(
            "You already have a contact with this address"),
        "contactExistsName": MessageLookupByLibrary.simpleMessage(
            "You already have a contact with this name"),
        "contactHeader": MessageLookupByLibrary.simpleMessage("Contact"),
        "contactInvalid":
            MessageLookupByLibrary.simpleMessage("Invalid Contact Name"),
        "contactNameHint": MessageLookupByLibrary.simpleMessage("Enter a Name"),
        "contactNameMissing": MessageLookupByLibrary.simpleMessage(
            "Choose a Name for this contact"),
        "contactPublicKeyGetAuto": MessageLookupByLibrary.simpleMessage(
            "The public key associated with this address has been recovered: "),
        "contactPublicKeyInfoExternalContact": MessageLookupByLibrary.simpleMessage(
            "The following QR Code contains the public key of your contact.\n\nYou can use this public key\n- to give him access rights to information that you want to protect (specific properties associated with NFTs, messages, ...).\n- to verify the authenticity of an information by checking that it comes from this contact.\n\nTo use it, you can\n- either scan the QR Code above,\n- or click on it to copy the public key."),
        "contactPublicKeyInfoKeychainService": MessageLookupByLibrary.simpleMessage(
            "The following QR Code contains the public key of your account.\n\nYou can use this public key\n- to give him access rights to information that you want to protect (specific properties associated with NFTs, messages, ...).\n- to verify the authenticity of an information by checking that it comes from this account.\n\nTo use it, you can\n- either scan the QR Code above,\n- or click on it to copy the public key."),
        "contactPublicKeyInfoWarning": MessageLookupByLibrary.simpleMessage(
            "Don\'t use this information to receive funds or tokens!"),
        "contactPublicKeyNotFound": MessageLookupByLibrary.simpleMessage(
            "No public key was found automatically. Please ask your contact for it."),
        "contactPublicKeyTabHeader":
            MessageLookupByLibrary.simpleMessage("Public Key"),
        "contactRemoved": MessageLookupByLibrary.simpleMessage(
            "%1 has been removed from address book!"),
        "conversionOraclePromotion": MessageLookupByLibrary.simpleMessage(
            "(Conversion provided by Archethic Oracles)"),
        "copy": MessageLookupByLibrary.simpleMessage("Copy"),
        "copyAddress": MessageLookupByLibrary.simpleMessage("Copy Address"),
        "createFungibleToken":
            MessageLookupByLibrary.simpleMessage("Create a token"),
        "createNFT": MessageLookupByLibrary.simpleMessage("Create a NFT"),
        "createNFTConfirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to create this NFT?"),
        "createNFTConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "Do you confirm the mint of the following NFT?"),
        "createPasswordHint":
            MessageLookupByLibrary.simpleMessage("Create a password"),
        "createTheNFT": MessageLookupByLibrary.simpleMessage("Create the NFT"),
        "createToken": MessageLookupByLibrary.simpleMessage("Create Token"),
        "currency": MessageLookupByLibrary.simpleMessage("Currency"),
        "currencyOracleInfo": MessageLookupByLibrary.simpleMessage(
            "This icon means that the conversion will use an oracle provided by Archethic."),
        "customHeader": MessageLookupByLibrary.simpleMessage("Customization"),
        "customizeCategoryListHeader":
            MessageLookupByLibrary.simpleMessage("Customize categories"),
        "deleteFile": MessageLookupByLibrary.simpleMessage("Delete file"),
        "deleteOption": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteProperty":
            MessageLookupByLibrary.simpleMessage("Delete property"),
        "dipslayPhraseExplanation": MessageLookupByLibrary.simpleMessage(
            "Here is the list of 24 words to remember. This list allows you to find your funds at any time if you lose your application or device.\nDo not give it to anyone! Even in the context of a support. \nArchethic will never ask you for this information."),
        "enterAddress": MessageLookupByLibrary.simpleMessage("Enter Address"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Enter Amount"),
        "enterEndpoint":
            MessageLookupByLibrary.simpleMessage("Enter an endpoint"),
        "enterEndpointBlank": MessageLookupByLibrary.simpleMessage(
            "The endpoint cannot be empty"),
        "enterEndpointHeader": MessageLookupByLibrary.simpleMessage(
            "Please, specify your endpoint"),
        "enterEndpointNotValid":
            MessageLookupByLibrary.simpleMessage("The endpoint is not valid"),
        "enterEndpointUseByNetwork": MessageLookupByLibrary.simpleMessage(
            "The endpoint is already used by a network"),
        "enterPasswordHint":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "enterPublicKey":
            MessageLookupByLibrary.simpleMessage("Enter Public Key"),
        "enterYubikeyAPIKeyEmpty":
            MessageLookupByLibrary.simpleMessage("The API Key is mandatory"),
        "enterYubikeyClientAPIKey":
            MessageLookupByLibrary.simpleMessage("Enter the client API Key"),
        "enterYubikeyClientID":
            MessageLookupByLibrary.simpleMessage("Enter the client ID"),
        "enterYubikeyClientIDEmpty":
            MessageLookupByLibrary.simpleMessage("The client ID is mandatory"),
        "estimatedFees": MessageLookupByLibrary.simpleMessage("Estimated fees"),
        "estimatedFeesAddNFTNote": MessageLookupByLibrary.simpleMessage(
            "Fees will be estimated when the NFT is defined."),
        "estimatedFeesAddTokenNote": MessageLookupByLibrary.simpleMessage(
            "Note : The fees will be estimated when the name and the initial supply are specified."),
        "estimatedFeesCalculationNote":
            MessageLookupByLibrary.simpleMessage("Fees are being calculated"),
        "estimatedFeesNote": MessageLookupByLibrary.simpleMessage(
            "Note : The fees will be estimated when the address and the amount are specified."),
        "estimatedFeesNoteNFT": MessageLookupByLibrary.simpleMessage(
            "Note : The fees will be estimated when the address is specified."),
        "exit": MessageLookupByLibrary.simpleMessage("Exit"),
        "fees": MessageLookupByLibrary.simpleMessage("Fees"),
        "fingerprintSeedBackup": MessageLookupByLibrary.simpleMessage(
            "Authenticate to backup seed."),
        "formatLabel": MessageLookupByLibrary.simpleMessage("Format: "),
        "fungiblesTokensListNoTokenYet":
            MessageLookupByLibrary.simpleMessage("No token yet"),
        "genericError": MessageLookupByLibrary.simpleMessage(
            "We\'re sorry, but an error has occurred. Please retry your request..."),
        "getOption": MessageLookupByLibrary.simpleMessage("Get"),
        "getPublicKeyHeader": MessageLookupByLibrary.simpleMessage("Access"),
        "go": MessageLookupByLibrary.simpleMessage("Go!"),
        "hiddenCategories":
            MessageLookupByLibrary.simpleMessage("Hidden categories"),
        "iUnderstandTheRisks":
            MessageLookupByLibrary.simpleMessage("I Understand the Risks"),
        "importSecretPhrase":
            MessageLookupByLibrary.simpleMessage("Import Secret Phrase"),
        "importSecretPhraseHint": MessageLookupByLibrary.simpleMessage(
            "Please enter your 24-word secret phrase below."),
        "importWallet":
            MessageLookupByLibrary.simpleMessage("I already have a wallet"),
        "informations": MessageLookupByLibrary.simpleMessage("Informations"),
        "instantly": MessageLookupByLibrary.simpleMessage("Instantly"),
        "insufficientBalance":
            MessageLookupByLibrary.simpleMessage("You don\'t have enough %1"),
        "introNewWalletGetFirstInfosNameBlank":
            MessageLookupByLibrary.simpleMessage(
                "Please enter a name for this account"),
        "introNewWalletGetFirstInfosNameCharacterNonValid":
            MessageLookupByLibrary.simpleMessage(
                "The name cannot contain \"\\\" and space characters"),
        "introNewWalletGetFirstInfosNameInfos":
            MessageLookupByLibrary.simpleMessage(
                "It will allow you to distinguish this account from other accounts that you can, if you want, create later.\n\nWARNING : This name will be added to your decentralized keychain and cannot be modified."),
        "introNewWalletGetFirstInfosNameRequest":
            MessageLookupByLibrary.simpleMessage(
                "What name would you like to give to this account, which account will be stored in your decentralized keychain?"),
        "introNewWalletGetFirstInfosNetworkChoice":
            MessageLookupByLibrary.simpleMessage("Current network :"),
        "introNewWalletGetFirstInfosNetworkHeader":
            MessageLookupByLibrary.simpleMessage(
                "On which network do you want to use your wallet?"),
        "introNewWalletGetFirstInfosWelcome":
            MessageLookupByLibrary.simpleMessage(
                "Welcome to Archethic Wallet."),
        "invalidAddress":
            MessageLookupByLibrary.simpleMessage("Address entered is invalid"),
        "invalidPassword":
            MessageLookupByLibrary.simpleMessage("Invalid Password"),
        "invalidPasteAddress": MessageLookupByLibrary.simpleMessage(
            "The address you want to paste is not valid."),
        "invalidTransaction":
            MessageLookupByLibrary.simpleMessage("Transaction is invalid"),
        "iveBackedItUp":
            MessageLookupByLibrary.simpleMessage("I\'ve Backed It Up"),
        "keychainAccessCreationTransactionConfirmed":
            MessageLookupByLibrary.simpleMessage(
                "Accesses to your keychain have been created with %1 confirmations on %2"),
        "keychainAccessCreationTransactionConfirmed1":
            MessageLookupByLibrary.simpleMessage(
                "Accesses to your keychain have been created with %1 confirmation on %2"),
        "keychainCreationTransactionConfirmed":
            MessageLookupByLibrary.simpleMessage(
                "Your keychain has been created with %1 confirmations on %2"),
        "keychainCreationTransactionConfirmed1":
            MessageLookupByLibrary.simpleMessage(
                "Your keychain has been created with %1 confirmation on %2"),
        "keychainHeader": MessageLookupByLibrary.simpleMessage("Keychain"),
        "keychainNotExistWarning":
            MessageLookupByLibrary.simpleMessage("Keychain doesn\'t exist."),
        "labLinkDesc": MessageLookupByLibrary.simpleMessage(
            "Latest tech and product updates on the Archethic ecosystem"),
        "labLinkHeader": MessageLookupByLibrary.simpleMessage("Lab"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "ledgerMethod": MessageLookupByLibrary.simpleMessage("Ledger Nano S"),
        "lockAppSetting":
            MessageLookupByLibrary.simpleMessage("Auth. on Launch"),
        "locked": MessageLookupByLibrary.simpleMessage("Locked"),
        "manage": MessageLookupByLibrary.simpleMessage("Manage"),
        "maxSendRecipientMissing": MessageLookupByLibrary.simpleMessage(
            "Please, enter the recipient to define the max amount."),
        "messageInTxTransfer":
            MessageLookupByLibrary.simpleMessage("See the message attached..."),
        "messageInvalid": MessageLookupByLibrary.simpleMessage(
            "Your message cannot contain (for the moment) special characters"),
        "mnemonicInvalidWord":
            MessageLookupByLibrary.simpleMessage("%1 is not a valid word"),
        "mnemonicSizeError": MessageLookupByLibrary.simpleMessage(
            "Secret phrase may only contain 24 words"),
        "networksDesc":
            MessageLookupByLibrary.simpleMessage("Define the endpoint"),
        "networksHeader": MessageLookupByLibrary.simpleMessage("Networks"),
        "newAccount": MessageLookupByLibrary.simpleMessage("New account"),
        "newAccountConfirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to create in your keychain \"%1?\""),
        "newWallet": MessageLookupByLibrary.simpleMessage("Get started"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Next >"),
        "nft": MessageLookupByLibrary.simpleMessage("NFT"),
        "nftAEWebEmpty": MessageLookupByLibrary.simpleMessage(
            "The AEWeb is not available yet."),
        "nftAddConfirmationFileEmpty": MessageLookupByLibrary.simpleMessage(
            "Veuillez importer un fichier ou une photo."),
        "nftAddFileSize": MessageLookupByLibrary.simpleMessage("Size: "),
        "nftAddImportAEWeb": MessageLookupByLibrary.simpleMessage("Use AEWeb"),
        "nftAddImportAEWebButton":
            MessageLookupByLibrary.simpleMessage("Add AEWeb"),
        "nftAddImportAEWebPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Please enter an AEWeb address"),
        "nftAddImportAEWebTitle":
            MessageLookupByLibrary.simpleMessage("Enter an AEWeb address"),
        "nftAddImportAEWebWarning": MessageLookupByLibrary.simpleMessage(
            "Please enter the full AEWeb Address of the file you wish to enter, to ensure successful retrieval of the file later on. Example: 0000address/image.png"),
        "nftAddImportCamera":
            MessageLookupByLibrary.simpleMessage("Take a photo"),
        "nftAddImportFile": MessageLookupByLibrary.simpleMessage("File"),
        "nftAddImportIPFS": MessageLookupByLibrary.simpleMessage("Use IPFS"),
        "nftAddImportIPFSButton":
            MessageLookupByLibrary.simpleMessage("Add IPFS"),
        "nftAddImportIPFSPlaceholder":
            MessageLookupByLibrary.simpleMessage("Please enter an IPFS url"),
        "nftAddImportIPFSTitle":
            MessageLookupByLibrary.simpleMessage("Enter an IPFS url"),
        "nftAddImportIPFSWarning": MessageLookupByLibrary.simpleMessage(
            "Please enter the full IPFS URL of the file you wish to enter, including the \'ipfs://\' prefix, to ensure successful retrieval of the file later on. Example: ipfs://abcde/photo.png"),
        "nftAddImportPhoto": MessageLookupByLibrary.simpleMessage("Photo"),
        "nftAddImportURLButton":
            MessageLookupByLibrary.simpleMessage("Add URL"),
        "nftAddImportURLPlaceholder":
            MessageLookupByLibrary.simpleMessage("Please enter an url"),
        "nftAddImportURLTitle":
            MessageLookupByLibrary.simpleMessage("Enter an url"),
        "nftAddImportURLWarning": MessageLookupByLibrary.simpleMessage(
            "Please enter the full URL of the file you wish to enter, including the \'https://\' or \'http://\' prefix, to ensure successful retrieval of the file later on. Example: https://abcde/photo.png"),
        "nftAddImportUrl": MessageLookupByLibrary.simpleMessage("Url"),
        "nftAddPhotoFormatInfo": MessageLookupByLibrary.simpleMessage(
            "The accepted formats are: JPG, PNG, GIF, WEBP, BMP."),
        "nftAddPreview":
            MessageLookupByLibrary.simpleMessage("Your NFT (Preview)"),
        "nftAddStep1": MessageLookupByLibrary.simpleMessage("1) Import from"),
        "nftAddStep2":
            MessageLookupByLibrary.simpleMessage("2) Enter information"),
        "nftAddStep3": MessageLookupByLibrary.simpleMessage(
            "3) Add properties (optional)"),
        "nftAssetNotProtected": MessageLookupByLibrary.simpleMessage(
            "This asset is accessible by everyone"),
        "nftAssetProtected1PublicKey": MessageLookupByLibrary.simpleMessage(
            "This asset is protected and accessible by 1 public key"),
        "nftAssetProtectedPublicKeys": MessageLookupByLibrary.simpleMessage(
            "This asset is protected and accessible by %1 public keys"),
        "nftCategory": MessageLookupByLibrary.simpleMessage("Category"),
        "nftCategoryAccess": MessageLookupByLibrary.simpleMessage("Access"),
        "nftCategoryArt": MessageLookupByLibrary.simpleMessage("Art"),
        "nftCategoryChangeCategory":
            MessageLookupByLibrary.simpleMessage("Move to a new category..."),
        "nftCategoryCollectibles":
            MessageLookupByLibrary.simpleMessage("Collectibles"),
        "nftCategoryDescriptionHeader0": MessageLookupByLibrary.simpleMessage(
            "Import a photo, a document, a piece of information, or any other element that you wish to transform into a non-fungible token."),
        "nftCategoryDescriptionHeader1":
            MessageLookupByLibrary.simpleMessage("Import a photo, an image."),
        "nftCategoryDescriptionHeader2": MessageLookupByLibrary.simpleMessage(
            "Import a ticket to access an event or a location."),
        "nftCategoryDescriptionHeader3":
            MessageLookupByLibrary.simpleMessage("Create your collections."),
        "nftCategoryDescriptionHeader4": MessageLookupByLibrary.simpleMessage(
            "Import a piece of music or a recording."),
        "nftCategoryDescriptionHeader5":
            MessageLookupByLibrary.simpleMessage("Import a document PDF."),
        "nftCategoryDescriptionHeader6":
            MessageLookupByLibrary.simpleMessage("Import a loyalty card"),
        "nftCategoryDescriptionHeaderDefault": MessageLookupByLibrary.simpleMessage(
            "Import a photo, a document, a piece of information, or any other element that you wish to transform into a non-fungible token."),
        "nftCategoryDoc": MessageLookupByLibrary.simpleMessage("Doc"),
        "nftCategoryLoyaltyCard":
            MessageLookupByLibrary.simpleMessage("Loyalty Cards"),
        "nftCategoryMusic": MessageLookupByLibrary.simpleMessage("Music"),
        "nftCategoryPhoto": MessageLookupByLibrary.simpleMessage("Photo"),
        "nftCreated": MessageLookupByLibrary.simpleMessage("NFT created :"),
        "nftCreationProcessTabDescriptionHeader":
            MessageLookupByLibrary.simpleMessage("Description"),
        "nftCreationProcessTabImportHeader":
            MessageLookupByLibrary.simpleMessage("Import"),
        "nftCreationProcessTabPropertiesHeader":
            MessageLookupByLibrary.simpleMessage("Properties"),
        "nftCreationProcessTabSummaryHeader":
            MessageLookupByLibrary.simpleMessage("Summary"),
        "nftCreationTransactionConfirmed": MessageLookupByLibrary.simpleMessage(
            "Your NFT has been created with %1 confirmations on %2"),
        "nftCreationTransactionConfirmed1":
            MessageLookupByLibrary.simpleMessage(
                "Your NFT has been created with %1 confirmation on %2"),
        "nftDescriptionHint":
            MessageLookupByLibrary.simpleMessage("Enter a description"),
        "nftFormatNotSupportedEmpty": MessageLookupByLibrary.simpleMessage(
            "The format is not supported."),
        "nftIPFSEmpty": MessageLookupByLibrary.simpleMessage(
            "Oops! The IPFS URL is not available."),
        "nftInfosCreationConfirmationWarning": MessageLookupByLibrary.simpleMessage(
            "I declare that I am aware that the content of my NFT will be PUBLIC, except for properties specifically set up as protected."),
        "nftInfosDescription": MessageLookupByLibrary.simpleMessage(
            "Add to your NFT a name and a human readable description."),
        "nftInfosImportWarning": MessageLookupByLibrary.simpleMessage(
            "Before importing, please remove the metadata (EXIF) from your images or documents if you don\'t want them to be public."),
        "nftInfosWarning": MessageLookupByLibrary.simpleMessage(
            "Limitation of this wallet application version"),
        "nftInfosWarningDesc": MessageLookupByLibrary.simpleMessage(
            "Except for the properties that you voluntarily choose to protect access to, the information in the NFT that you are going to create will be PUBLIC information, therefore accessible to everyone.\nDo not create an NFT with sensitive or personal data that you do not wish to disclose.\nThe protection of images or documents is a mechanism already proposed by the Archethic blockchain, will be also proposed in a future release of the wallet application."),
        "nftInitialSupplyHint":
            MessageLookupByLibrary.simpleMessage("Enter a quantity"),
        "nftListEmptyExplanation": MessageLookupByLibrary.simpleMessage(
            "This is where you will find your NFTs related to this category. \nUnfortunately, for the moment, no NFTs are stored in this category, but you can create them by going to the \"Create a NFT\" function below."),
        "nftNameEmpty": MessageLookupByLibrary.simpleMessage(
            "Please, enter a name for the NFT."),
        "nftNameHint":
            MessageLookupByLibrary.simpleMessage("Enter the name of the NFT"),
        "nftNotFound":
            MessageLookupByLibrary.simpleMessage("The NFT was not found."),
        "nftPropertiesRequiredByCategory": MessageLookupByLibrary.simpleMessage(
            "Properties required by the category:"),
        "nftPropertyExists": MessageLookupByLibrary.simpleMessage(
            "This property already exists"),
        "nftPropertyExplanation": MessageLookupByLibrary.simpleMessage(
            "You can add additional properties to define, characterize or specify the use of your NFT. Name and value are free.\n\nExamples : name=\"strength\", valeur=\"30\", nom=\"color\", valeur=\"green\", nom=\"year\", valeur=\"2012\"."),
        "nftPropertyNameEmpty":
            MessageLookupByLibrary.simpleMessage("Please, enter a name."),
        "nftPropertyNameHint":
            MessageLookupByLibrary.simpleMessage("Enter the name of the prop."),
        "nftPropertyNotProtected": MessageLookupByLibrary.simpleMessage(
            "This property is accessible by everyone"),
        "nftPropertyProtected1PublicKey": MessageLookupByLibrary.simpleMessage(
            "This property is protected and accessible by 1 public key"),
        "nftPropertyProtectedPublicKeys": MessageLookupByLibrary.simpleMessage(
            "This property is protected and accessible by %1 public keys"),
        "nftPropertyValueEmpty":
            MessageLookupByLibrary.simpleMessage("Please, enter a value."),
        "nftPropertyValueHint":
            MessageLookupByLibrary.simpleMessage("Enter a value"),
        "nftSizeExceed": MessageLookupByLibrary.simpleMessage(
            "The NFT cannot exceed 2.5 MB."),
        "nftTabDescriptionHeader": MessageLookupByLibrary.simpleMessage(
            "This space allows you to access your NFTs or to create them directly from images, photos or pdf documents. You can also transfer them to any address."),
        "nftURLEmpty": MessageLookupByLibrary.simpleMessage(
            "Oops! The URL is not available."),
        "nftWithoutCategory":
            MessageLookupByLibrary.simpleMessage("Without category"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noConnection": MessageLookupByLibrary.simpleMessage(
            "The connection to the network could not be completed. Please check your network settings."),
        "noConnectionBanner":
            MessageLookupByLibrary.simpleMessage("No connection"),
        "noData": MessageLookupByLibrary.simpleMessage("No data"),
        "noKeychain": MessageLookupByLibrary.simpleMessage(
            "No keychain exists with this secret phrase."),
        "noNFT": MessageLookupByLibrary.simpleMessage("No NFT"),
        "noProperty": MessageLookupByLibrary.simpleMessage("No property"),
        "noToken": MessageLookupByLibrary.simpleMessage("No token"),
        "nodeAuthorizationDate":
            MessageLookupByLibrary.simpleMessage("Authorization date : "),
        "nodeAuthorized": MessageLookupByLibrary.simpleMessage("Authorized : "),
        "nodeAverageAvailability":
            MessageLookupByLibrary.simpleMessage("Average availability : "),
        "nodeEnrollmentDate":
            MessageLookupByLibrary.simpleMessage("Enrollment date : "),
        "nodeFirstPublicKey":
            MessageLookupByLibrary.simpleMessage("First public key : "),
        "nodeGeoPatch": MessageLookupByLibrary.simpleMessage("Geo patch : "),
        "nodeIP": MessageLookupByLibrary.simpleMessage("IP : "),
        "nodeLastPublicKey":
            MessageLookupByLibrary.simpleMessage("Last public key : "),
        "nodeNetworkPatch":
            MessageLookupByLibrary.simpleMessage("Network patch : "),
        "nodeNumber": MessageLookupByLibrary.simpleMessage("Nb of nodes : "),
        "nodeRewardAddress":
            MessageLookupByLibrary.simpleMessage("Reward address : "),
        "nodesHeader": MessageLookupByLibrary.simpleMessage("Nodes"),
        "nodesHeaderDesc":
            MessageLookupByLibrary.simpleMessage("Nodes informations"),
        "notEnoughConfirmations": MessageLookupByLibrary.simpleMessage(
            "The application could not be completed due to lack of consensus"),
        "notOfficialUCOWarning": MessageLookupByLibrary.simpleMessage(
            "This is not the official UCO token."),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "pass": MessageLookupByLibrary.simpleMessage("Pass"),
        "passBackupConfirmationDisclaimer":
            MessageLookupByLibrary.simpleMessage("DISCLAIMER"),
        "passBackupConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "We invite you to manually confirm the registration of your recovery phrase. In case of loss, you will lose your funds."),
        "passwordBlank":
            MessageLookupByLibrary.simpleMessage("Password cannot be empty"),
        "passwordMethod": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordStrengthAlright":
            MessageLookupByLibrary.simpleMessage("Your password is alright."),
        "passwordStrengthStrong":
            MessageLookupByLibrary.simpleMessage("Your password is strong."),
        "passwordStrengthWeak":
            MessageLookupByLibrary.simpleMessage("Your password is weak."),
        "passwordsDontMatch":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "pinConfirmError":
            MessageLookupByLibrary.simpleMessage("Pins do not match"),
        "pinConfirmTitle":
            MessageLookupByLibrary.simpleMessage("Confirm your pin"),
        "pinCreateTitle":
            MessageLookupByLibrary.simpleMessage("Create a 6-digit pin"),
        "pinEnterTitle": MessageLookupByLibrary.simpleMessage("Enter pin"),
        "pinInvalid":
            MessageLookupByLibrary.simpleMessage("Invalid pin entered"),
        "pinMethod": MessageLookupByLibrary.simpleMessage("PIN"),
        "pinPadShuffle":
            MessageLookupByLibrary.simpleMessage("PIN Pad Shuffle"),
        "pinSecretPhraseBackup": MessageLookupByLibrary.simpleMessage(
            "Enter PIN to Backup Secret Phrase"),
        "pleaseWait": MessageLookupByLibrary.simpleMessage("Please wait"),
        "preferences": MessageLookupByLibrary.simpleMessage("Preferences"),
        "previewNotAvailable":
            MessageLookupByLibrary.simpleMessage("Preview not available"),
        "previousButton": MessageLookupByLibrary.simpleMessage("< Previous"),
        "priceChartHeader": MessageLookupByLibrary.simpleMessage("Price Chart"),
        "primaryCurrency":
            MessageLookupByLibrary.simpleMessage("Primary currency"),
        "properties": MessageLookupByLibrary.simpleMessage("properties"),
        "property": MessageLookupByLibrary.simpleMessage("property"),
        "propertyAccessAddAccess":
            MessageLookupByLibrary.simpleMessage("Add access"),
        "propertyAccessDescription": MessageLookupByLibrary.simpleMessage(
            "Add or remove public keys that can access this property."),
        "propertyAccessDescriptionReadOnly": MessageLookupByLibrary.simpleMessage(
            "The following list contains the public keys that can access this element."),
        "publicKeyAccessExists":
            MessageLookupByLibrary.simpleMessage("This access already exists"),
        "publicKeyAddHint":
            MessageLookupByLibrary.simpleMessage("Enter a public key"),
        "publicKeyCopied":
            MessageLookupByLibrary.simpleMessage("Public key Copied"),
        "publicKeyHint":
            MessageLookupByLibrary.simpleMessage("Enter Public Key"),
        "publicKeyInvalid":
            MessageLookupByLibrary.simpleMessage("The public key is not valid"),
        "publicKeyNotValid": MessageLookupByLibrary.simpleMessage(
            "The public key is not valid."),
        "qrInvalidAddress": MessageLookupByLibrary.simpleMessage(
            "QR code doesn\'t contain a valid destination"),
        "qrInvalidPermissions": MessageLookupByLibrary.simpleMessage(
            "Please Grant Camera Permissions to scan QR Codes"),
        "qrMnemonicError": MessageLookupByLibrary.simpleMessage(
            "QR doesn\'t contain a valid secret phrase"),
        "qrUnknownError":
            MessageLookupByLibrary.simpleMessage("Could not Read QR Code"),
        "receive": MessageLookupByLibrary.simpleMessage("Receive"),
        "recentTransactionsHeader":
            MessageLookupByLibrary.simpleMessage("Recent transactions"),
        "recentTransactionsNoTransactionYet":
            MessageLookupByLibrary.simpleMessage("No transaction yet"),
        "recoveryPhrase":
            MessageLookupByLibrary.simpleMessage("Recovery Phrase"),
        "recoveryPhraseIntroExplanation": MessageLookupByLibrary.simpleMessage(
            "Here is the list of 24 words to remember. The following screen will prompt you to find them in order to help you verify that you have written them down correctly.\n\nThis list will also be available in your wallet in the \"Security\" menu."),
        "removeContact": MessageLookupByLibrary.simpleMessage("Remove Contact"),
        "removeContactConfirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete %1?"),
        "removePublicKey":
            MessageLookupByLibrary.simpleMessage("Remove public key"),
        "removeWallet": MessageLookupByLibrary.simpleMessage(
            "Remove Wallet from this device"),
        "removeWalletAction": MessageLookupByLibrary.simpleMessage("Delete"),
        "removeWalletDescription": MessageLookupByLibrary.simpleMessage(
            "You can find it at any time with your secret phrase"),
        "removeWalletDetail": MessageLookupByLibrary.simpleMessage(
            "You are about to remove all Archethic-related data from this device. If your secret phrase is not backed up, you will never be able to access your wallet again"),
        "removeWalletReassurance": MessageLookupByLibrary.simpleMessage(
            "As long as you\'ve backed up your seed you have nothing to worry about."),
        "resyncWallet":
            MessageLookupByLibrary.simpleMessage("Resynchronize Wallet"),
        "resyncWalletAreYouSure": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to clear your cache and reload the information from the blockchain?\n\nThis action takes a few seconds and is safe because it only reloads your recent transactions."),
        "resyncWalletDescription": MessageLookupByLibrary.simpleMessage(
            "Empty the cache and reload informations from the blockchain"),
        "rootWarning": MessageLookupByLibrary.simpleMessage(
            "It appears your device is \"rooted\", \"jailbroken\", or modified in a way that compromises security. It is recommended that you reset your device to its original state before proceeding."),
        "scanQrCode": MessageLookupByLibrary.simpleMessage("Scan QR Code"),
        "seYubicloudConfirmHeader": MessageLookupByLibrary.simpleMessage(
            "Please, confirm your client identity and client API key."),
        "seYubicloudDescription": MessageLookupByLibrary.simpleMessage(
            "To use the Yubico OTP with your Yubikey, you need to get an API key from https://upgrade.yubico.com/getapikey. It\'s quick and free.\n\nAfter that, you can precise the given client identity and the client API key"),
        "seYubicloudHeader": MessageLookupByLibrary.simpleMessage(
            "Please, precise your client identity and client API key."),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "searchField": MessageLookupByLibrary.simpleMessage("Search..."),
        "searchNFTHint": MessageLookupByLibrary.simpleMessage(
            "Search for a NFT\nfrom an address."),
        "securityHeader": MessageLookupByLibrary.simpleMessage("Security"),
        "seeAll": MessageLookupByLibrary.simpleMessage("See all transactions"),
        "selectAccountDescOne": MessageLookupByLibrary.simpleMessage(
            "Your keychain contains one account. You will be able to create other accounts at any time."),
        "selectAccountDescSeveral": MessageLookupByLibrary.simpleMessage(
            "Your keychain contains several accounts. Which account do you want to manage first in your app? You will be able to create or select other accounts at any time."),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendError": MessageLookupByLibrary.simpleMessage(
            "An error occurred. Try again later."),
        "sendMessageConfirmHeader":
            MessageLookupByLibrary.simpleMessage("Your message :"),
        "sendMessageHeader": MessageLookupByLibrary.simpleMessage("Message"),
        "sendToMeError": MessageLookupByLibrary.simpleMessage(
            "You can\'t send %1 to your own wallet."),
        "serviceNotFound": MessageLookupByLibrary.simpleMessage(
            "The service does\'nt exist in the keychain."),
        "serviceTypeLabelAeweb":
            MessageLookupByLibrary.simpleMessage("Website hosted on AEWeb"),
        "serviceTypeLabelArchethicWallet":
            MessageLookupByLibrary.simpleMessage("Wallet"),
        "serviceTypeLabelOther": MessageLookupByLibrary.simpleMessage("Other"),
        "setPasswordDescription": MessageLookupByLibrary.simpleMessage(
            "In order to protect your account, make sure your password:"),
        "setPasswordHeader":
            MessageLookupByLibrary.simpleMessage("Please, create a password."),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "showBalances": MessageLookupByLibrary.simpleMessage("Show balances"),
        "showBlog": MessageLookupByLibrary.simpleMessage("Show blog"),
        "showPriceChart":
            MessageLookupByLibrary.simpleMessage("Show price chart"),
        "systemDefault": MessageLookupByLibrary.simpleMessage("System Default"),
        "tapToHide": MessageLookupByLibrary.simpleMessage("Tap to hide"),
        "tapToReveal": MessageLookupByLibrary.simpleMessage("Tap to reveal"),
        "themeHeader": MessageLookupByLibrary.simpleMessage("Theme"),
        "token": MessageLookupByLibrary.simpleMessage("token"),
        "tokenCreated": MessageLookupByLibrary.simpleMessage("Token created :"),
        "tokenHeaderDesc":
            MessageLookupByLibrary.simpleMessage("Manage your tokens"),
        "tokenInitialSupply":
            MessageLookupByLibrary.simpleMessage("Initial supply :"),
        "tokenInitialSupplyHint":
            MessageLookupByLibrary.simpleMessage("Enter an initial supply"),
        "tokenInitialSupplyMissing": MessageLookupByLibrary.simpleMessage(
            "Choose an initial supply for the Token"),
        "tokenInitialSupplyPositive": MessageLookupByLibrary.simpleMessage(
            "The initial supply should be > 0"),
        "tokenInitialSupplyTooHigh": MessageLookupByLibrary.simpleMessage(
            "The initial supply is too high"),
        "tokenName": MessageLookupByLibrary.simpleMessage("Name :"),
        "tokenNameHint": MessageLookupByLibrary.simpleMessage("Enter a name"),
        "tokenNameMissing":
            MessageLookupByLibrary.simpleMessage("Choose a Name for the Token"),
        "tokenNameUCO": MessageLookupByLibrary.simpleMessage(
            "Unfortunately, we have already taken this name of token."),
        "tokenSupply": MessageLookupByLibrary.simpleMessage("Supply :"),
        "tokenSymbol": MessageLookupByLibrary.simpleMessage("Symbol :"),
        "tokenSymbolHint":
            MessageLookupByLibrary.simpleMessage("Enter a symbol"),
        "tokenSymbolMaxNumberCharacter":
            MessageLookupByLibrary.simpleMessage("4 characters maximum"),
        "tokenSymbolMissing": MessageLookupByLibrary.simpleMessage(
            "Choose a Symbol for the Token"),
        "tokenSymbolUCO": MessageLookupByLibrary.simpleMessage(
            "Unfortunately, we have already taken this name of symbol."),
        "tokens": MessageLookupByLibrary.simpleMessage("tokens"),
        "tokensHeader": MessageLookupByLibrary.simpleMessage("Tokens"),
        "tooManyFailedAttempts": MessageLookupByLibrary.simpleMessage(
            "Too many failed unlock attempts.\nPlease, try again"),
        "total": MessageLookupByLibrary.simpleMessage("Total :"),
        "transactionBuyHeader":
            MessageLookupByLibrary.simpleMessage("Buy UCO here"),
        "transactionChainExplorerDesc": MessageLookupByLibrary.simpleMessage(
            "Explore each transaction stored in your chain"),
        "transactionChainExplorerHeader":
            MessageLookupByLibrary.simpleMessage("Transaction Chain Explorer"),
        "transactionChainExplorerLastAddress":
            MessageLookupByLibrary.simpleMessage("Last address"),
        "transactionConfirmationFormHeader":
            MessageLookupByLibrary.simpleMessage(
                "Transaction send confirmation"),
        "transactionConfirmed": MessageLookupByLibrary.simpleMessage(
            "Transaction confirmed with %1 replications out of %2"),
        "transactionConfirmed1": MessageLookupByLibrary.simpleMessage(
            "Transaction confirmed with %1 replication out of %2"),
        "transactionInfosHeader":
            MessageLookupByLibrary.simpleMessage("Transaction informations"),
        "transactionInfosKeyAddress":
            MessageLookupByLibrary.simpleMessage("Address"),
        "transactionInfosKeyAmount":
            MessageLookupByLibrary.simpleMessage("Amount"),
        "transactionInfosKeyCode": MessageLookupByLibrary.simpleMessage("Code"),
        "transactionInfosKeyContent":
            MessageLookupByLibrary.simpleMessage("Content"),
        "transactionInfosKeyCrossValidationStamps":
            MessageLookupByLibrary.simpleMessage("Cross Validation Stamp"),
        "transactionInfosKeyData": MessageLookupByLibrary.simpleMessage("Data"),
        "transactionInfosKeyOriginSignature":
            MessageLookupByLibrary.simpleMessage("Origin Signature"),
        "transactionInfosKeyPreviousPublicKey":
            MessageLookupByLibrary.simpleMessage("Previous Public Key"),
        "transactionInfosKeyPreviousSignature":
            MessageLookupByLibrary.simpleMessage("Previous Signature"),
        "transactionInfosKeyProofOfIntegrity":
            MessageLookupByLibrary.simpleMessage("Proof of integrity"),
        "transactionInfosKeyProofOfWork":
            MessageLookupByLibrary.simpleMessage("Proof of work"),
        "transactionInfosKeySignature":
            MessageLookupByLibrary.simpleMessage("Signature"),
        "transactionInfosKeyTimeStamp":
            MessageLookupByLibrary.simpleMessage("Timestamp"),
        "transactionInfosKeyTo": MessageLookupByLibrary.simpleMessage("To"),
        "transactionInfosKeyToken":
            MessageLookupByLibrary.simpleMessage("Token"),
        "transactionInfosKeyTokenLedger":
            MessageLookupByLibrary.simpleMessage("Token Ledger"),
        "transactionInfosKeyType": MessageLookupByLibrary.simpleMessage("Type"),
        "transactionInfosKeyUCOLedger":
            MessageLookupByLibrary.simpleMessage("UCO Ledger"),
        "transactionInfosKeyValidationStamp":
            MessageLookupByLibrary.simpleMessage("Validation Stamp"),
        "transactionInfosKeyVersion":
            MessageLookupByLibrary.simpleMessage("Version"),
        "transactionInputNotification": MessageLookupByLibrary.simpleMessage(
            "You have received %1 %2 on your %3 account"),
        "transactionSignatureCommandReceivedNotification":
            MessageLookupByLibrary.simpleMessage(
                "Application %1 wants to send a transaction."),
        "transactionTimeOut": MessageLookupByLibrary.simpleMessage(
            "The transaction encountered a timeout issue. Please retry your request..."),
        "transactionsAllListHeader":
            MessageLookupByLibrary.simpleMessage("Transactions"),
        "transferConfirmed": MessageLookupByLibrary.simpleMessage(
            "The transfer was created with %1 confirmations on %2"),
        "transferConfirmed1": MessageLookupByLibrary.simpleMessage(
            "The transfer was created with %1 confirmation on %2"),
        "transferNFT": MessageLookupByLibrary.simpleMessage("Transfer NFT"),
        "transferSuccess": MessageLookupByLibrary.simpleMessage(
            "The transaction was sent successfully"),
        "transferToken": MessageLookupByLibrary.simpleMessage("Transfer Token"),
        "transferTokenName":
            MessageLookupByLibrary.simpleMessage("Transfer %1"),
        "transferTokens": MessageLookupByLibrary.simpleMessage("Send %1"),
        "transfering": MessageLookupByLibrary.simpleMessage("Transfering"),
        "txListFees": MessageLookupByLibrary.simpleMessage("Fees :"),
        "txListFrom": MessageLookupByLibrary.simpleMessage("From : "),
        "txListTo": MessageLookupByLibrary.simpleMessage("To :"),
        "txListTypeTransactionLabelNewToken":
            MessageLookupByLibrary.simpleMessage("New Token"),
        "txListTypeTransactionLabelReceive":
            MessageLookupByLibrary.simpleMessage("Received the "),
        "txListTypeTransactionLabelSend":
            MessageLookupByLibrary.simpleMessage("Sent the "),
        "understandButton":
            MessageLookupByLibrary.simpleMessage("I understand"),
        "unknownAccount":
            MessageLookupByLibrary.simpleMessage("Account %1 does not exist."),
        "unlock": MessageLookupByLibrary.simpleMessage("Unlock"),
        "unlockBiometrics":
            MessageLookupByLibrary.simpleMessage("Authenticate to Unlock"),
        "unlockNFCYubikey":
            MessageLookupByLibrary.simpleMessage("Authenticate to Unlock"),
        "unlockPin":
            MessageLookupByLibrary.simpleMessage("Enter PIN to Unlock"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updateAvailableDesc": MessageLookupByLibrary.simpleMessage(
            "A new version (%1) is available.\n\nPlease update the app."),
        "updateAvailableTitle":
            MessageLookupByLibrary.simpleMessage("App Update"),
        "userCancelledOperation":
            MessageLookupByLibrary.simpleMessage("User cancelled operation"),
        "version": MessageLookupByLibrary.simpleMessage("Version :"),
        "viewAddressBook":
            MessageLookupByLibrary.simpleMessage("View my address book"),
        "viewExplorer":
            MessageLookupByLibrary.simpleMessage("View on explorer"),
        "walletFAQDesc": MessageLookupByLibrary.simpleMessage(
            "Have a question? Check here first!"),
        "walletFAQHeader": MessageLookupByLibrary.simpleMessage("Wallet FAQ"),
        "warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "welcomeDisclaimerChoice": MessageLookupByLibrary.simpleMessage(
            "I have read and agree to the privacy policy"),
        "welcomeDisclaimerLink":
            MessageLookupByLibrary.simpleMessage("Terms of use"),
        "welcomeText": MessageLookupByLibrary.simpleMessage(
            "Welcome to the empowered\n{Humans; Nature; Apps}\nera of Web3"),
        "welcomeText2": MessageLookupByLibrary.simpleMessage(
            "Archethic gives back to humanity control over technology, and to each individual, control over their identity."),
        "xMinute": MessageLookupByLibrary.simpleMessage("After %1 minute"),
        "xMinutes": MessageLookupByLibrary.simpleMessage("After %1 minutes"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yubikeyConnectHoldNearDevice": MessageLookupByLibrary.simpleMessage(
            "Hold your device near the Yubikey"),
        "yubikeyConnectInvite": MessageLookupByLibrary.simpleMessage(
            "Please, connect your Yubikey"),
        "yubikeyError_BACKEND_ERROR": MessageLookupByLibrary.simpleMessage(
            "Unexpected error in the yubicloud server."),
        "yubikeyError_BAD_OTP":
            MessageLookupByLibrary.simpleMessage("The OTP is invalid format."),
        "yubikeyError_BAD_SIGNATURE": MessageLookupByLibrary.simpleMessage(
            "The HMAC signature verification failed."),
        "yubikeyError_MISSING_PARAMETER": MessageLookupByLibrary.simpleMessage(
            "The request lacks a parameter."),
        "yubikeyError_NOT_ENOUGH_ANSWERS": MessageLookupByLibrary.simpleMessage(
            "Server could not get requested number of syncs during before timeout."),
        "yubikeyError_NO_SUCH_CLIENT": MessageLookupByLibrary.simpleMessage(
            "The request ID doesn\'t exist."),
        "yubikeyError_OPERATION_NOT_ALLOWED":
            MessageLookupByLibrary.simpleMessage(
                "The request ID is not allowed to verify OTPs."),
        "yubikeyError_OTP_NOT_FOUND":
            MessageLookupByLibrary.simpleMessage("The OTP is empty"),
        "yubikeyError_REPLAYED_OTP": MessageLookupByLibrary.simpleMessage(
            "The OTP has already been seen by the service."),
        "yubikeyError_REPLAYED_REQUEST": MessageLookupByLibrary.simpleMessage(
            "Server has seen the OTP/Nonce combination before"),
        "yubikeyError_RESPONSE_KO": MessageLookupByLibrary.simpleMessage(
            "An error occurred with Yubikey Authentification. Try again later."),
        "yubikeyParamsDesc":
            MessageLookupByLibrary.simpleMessage("Setting up Yubicloud access"),
        "yubikeyParamsHeader":
            MessageLookupByLibrary.simpleMessage("Yubikey Params"),
        "yubikeyWithYubiCloudMethod":
            MessageLookupByLibrary.simpleMessage("Yubikey")
      };
}
