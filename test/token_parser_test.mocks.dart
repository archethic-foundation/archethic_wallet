// Mocks generated by Mockito 5.4.4 from annotations
// in aewallet/test/token_parser_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i10;
import 'dart:typed_data' as _i18;

import 'package:aewallet/infrastructure/repositories/tokens/tokens.repository.dart'
    as _i22;
import 'package:aewallet/modules/aeswap/domain/models/util/get_pool_list_response.dart'
    as _i23;
import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart'
    as _i9;
import 'package:archethic_dapp_framework_flutter/src/domain/models/ae_token.dart'
    as _i8;
import 'package:archethic_dapp_framework_flutter/src/domain/models/environment.dart'
    as _i11;
import 'package:archethic_lib_dart/archethic_lib_dart.dart' as _i12;
import 'package:archethic_lib_dart/src/model/address.dart' as _i6;
import 'package:archethic_lib_dart/src/model/balance.dart' as _i14;
import 'package:archethic_lib_dart/src/model/blockchain_version.dart' as _i7;
import 'package:archethic_lib_dart/src/model/endpoint.dart' as _i20;
import 'package:archethic_lib_dart/src/model/keychain.dart' as _i5;
import 'package:archethic_lib_dart/src/model/node.dart' as _i15;
import 'package:archethic_lib_dart/src/model/ownership.dart' as _i17;
import 'package:archethic_lib_dart/src/model/smart_contracts/sc_call_function_request.dart'
    as _i21;
import 'package:archethic_lib_dart/src/model/token.dart' as _i19;
import 'package:archethic_lib_dart/src/model/transaction.dart' as _i4;
import 'package:archethic_lib_dart/src/model/transaction_fee.dart' as _i3;
import 'package:archethic_lib_dart/src/model/transaction_input.dart' as _i16;
import 'package:archethic_lib_dart/src/model/transaction_status.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i13;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTransactionStatus_0 extends _i1.SmartFake
    implements _i2.TransactionStatus {
  _FakeTransactionStatus_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransactionFee_1 extends _i1.SmartFake
    implements _i3.TransactionFee {
  _FakeTransactionFee_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransaction_2 extends _i1.SmartFake implements _i4.Transaction {
  _FakeTransaction_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeKeychain_3 extends _i1.SmartFake implements _i5.Keychain {
  _FakeKeychain_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAddress_4 extends _i1.SmartFake implements _i6.Address {
  _FakeAddress_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeObject_5 extends _i1.SmartFake implements Object {
  _FakeObject_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBlockchainVersionModel_6 extends _i1.SmartFake
    implements _i7.BlockchainVersionModel {
  _FakeBlockchainVersionModel_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAEToken_7 extends _i1.SmartFake implements _i8.AEToken {
  _FakeAEToken_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [DefTokensRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockDefTokensRepositoryImpl extends _i1.Mock
    implements _i9.DefTokensRepositoryImpl {
  @override
  _i10.Future<_i8.AEToken?> getDefToken(
    _i11.Environment? environment,
    String? address,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDefToken,
          [
            environment,
            address,
          ],
        ),
        returnValue: _i10.Future<_i8.AEToken?>.value(),
        returnValueForMissingStub: _i10.Future<_i8.AEToken?>.value(),
      ) as _i10.Future<_i8.AEToken?>);
}

/// A class which mocks [ApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiService extends _i1.Mock implements _i12.ApiService {
  @override
  String get endpoint => (super.noSuchMethod(
        Invocation.getter(#endpoint),
        returnValue: _i13.dummyValue<String>(
          this,
          Invocation.getter(#endpoint),
        ),
        returnValueForMissingStub: _i13.dummyValue<String>(
          this,
          Invocation.getter(#endpoint),
        ),
      ) as String);

  @override
  _i10.Future<_i2.TransactionStatus> sendTx(_i4.Transaction? transaction) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendTx,
          [transaction],
        ),
        returnValue:
            _i10.Future<_i2.TransactionStatus>.value(_FakeTransactionStatus_0(
          this,
          Invocation.method(
            #sendTx,
            [transaction],
          ),
        )),
        returnValueForMissingStub:
            _i10.Future<_i2.TransactionStatus>.value(_FakeTransactionStatus_0(
          this,
          Invocation.method(
            #sendTx,
            [transaction],
          ),
        )),
      ) as _i10.Future<_i2.TransactionStatus>);

  @override
  _i10.Future<Map<String, _i4.Transaction>> getLastTransaction(
    List<String>? addresses, {
    String? request =
        r' address, balance { token { address, amount }, uco }, chainLength, crossValidationStamps { nodePublicKey, signature }, data { content,  ownerships {  authorizedPublicKeys { encryptedSecretKey, publicKey } secret } ledger { uco { transfers { amount, to } }, token { transfers { amount, to, tokenAddress, tokenId } } } recipients, actionRecipients { action address args } } inputs { amount, from, tokenAddress, spent, tokenId, timestamp, type, }, originSignature, previousAddress, previousPublicKey, previousSignature, type, validationStamp { proofOfIntegrity, proofOfWork, signature, timestamp, ledgerOperations { fee, unspentOutputs { state } } }, version',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getLastTransaction,
          [addresses],
          {#request: request},
        ),
        returnValue: _i10.Future<Map<String, _i4.Transaction>>.value(
            <String, _i4.Transaction>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, _i4.Transaction>>.value(
                <String, _i4.Transaction>{}),
      ) as _i10.Future<Map<String, _i4.Transaction>>);

  @override
  _i10.Future<Map<String, int>> getTransactionIndex(List<String>? addresses) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactionIndex,
          [addresses],
        ),
        returnValue: _i10.Future<Map<String, int>>.value(<String, int>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, int>>.value(<String, int>{}),
      ) as _i10.Future<Map<String, int>>);

  @override
  _i10.Future<String> getStorageNoncePublicKey() => (super.noSuchMethod(
        Invocation.method(
          #getStorageNoncePublicKey,
          [],
        ),
        returnValue: _i10.Future<String>.value(_i13.dummyValue<String>(
          this,
          Invocation.method(
            #getStorageNoncePublicKey,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i10.Future<String>.value(_i13.dummyValue<String>(
          this,
          Invocation.method(
            #getStorageNoncePublicKey,
            [],
          ),
        )),
      ) as _i10.Future<String>);

  @override
  _i10.Future<Map<String, _i14.Balance>> fetchBalance(
    List<String>? addresses, {
    String? request = r' token { address, amount, tokenId }, uco ',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchBalance,
          [addresses],
          {#request: request},
        ),
        returnValue: _i10.Future<Map<String, _i14.Balance>>.value(
            <String, _i14.Balance>{}),
        returnValueForMissingStub: _i10.Future<Map<String, _i14.Balance>>.value(
            <String, _i14.Balance>{}),
      ) as _i10.Future<Map<String, _i14.Balance>>);

  @override
  _i10.Future<Map<String, String>> getTransactionContent(
          List<String>? addresses) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactionContent,
          [addresses],
        ),
        returnValue: _i10.Future<Map<String, String>>.value(<String, String>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, String>>.value(<String, String>{}),
      ) as _i10.Future<Map<String, String>>);

  @override
  _i10.Future<Map<String, List<_i4.Transaction>>> getTransactionChain(
    Map<String, String>? addresses, {
    String? request =
        r' address, balance { token { address, amount }, uco }, chainLength, crossValidationStamps { nodePublicKey, signature }, data { content,  ownerships {  authorizedPublicKeys { encryptedSecretKey, publicKey } secret } ledger { uco { transfers { amount, to } }, token { transfers { amount, to, tokenAddress, tokenId } } } recipients, actionRecipients { action address args } } inputs { amount, from, tokenAddress, spent, tokenId, timestamp, type, }, originSignature, previousAddress, previousPublicKey, previousSignature, type, validationStamp { proofOfIntegrity, proofOfWork, signature, timestamp, ledgerOperations { fee, unspentOutputs { state } } }, version',
    bool? orderAsc = true,
    int? fromCriteria,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactionChain,
          [addresses],
          {
            #request: request,
            #orderAsc: orderAsc,
            #fromCriteria: fromCriteria,
          },
        ),
        returnValue: _i10.Future<Map<String, List<_i4.Transaction>>>.value(
            <String, List<_i4.Transaction>>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, List<_i4.Transaction>>>.value(
                <String, List<_i4.Transaction>>{}),
      ) as _i10.Future<Map<String, List<_i4.Transaction>>>);

  @override
  _i10.Future<List<_i15.Node>> getNodeList() => (super.noSuchMethod(
        Invocation.method(
          #getNodeList,
          [],
        ),
        returnValue: _i10.Future<List<_i15.Node>>.value(<_i15.Node>[]),
        returnValueForMissingStub:
            _i10.Future<List<_i15.Node>>.value(<_i15.Node>[]),
      ) as _i10.Future<List<_i15.Node>>);

  @override
  _i10.Future<List<_i4.Transaction>> networkTransactions(
    String? type,
    int? page, {
    String? request =
        r' address, balance { token { address, amount }, uco }, chainLength, crossValidationStamps { nodePublicKey, signature }, data { content,  ownerships {  authorizedPublicKeys { encryptedSecretKey, publicKey } secret } ledger { uco { transfers { amount, to } }, token { transfers { amount, to, tokenAddress, tokenId } } } recipients, actionRecipients { action address args } } inputs { amount, from, tokenAddress, spent, tokenId, timestamp, type, }, originSignature, previousAddress, previousPublicKey, previousSignature, type, validationStamp { proofOfIntegrity, proofOfWork, signature, timestamp, ledgerOperations { fee, unspentOutputs { state } } }, version',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #networkTransactions,
          [
            type,
            page,
          ],
          {#request: request},
        ),
        returnValue:
            _i10.Future<List<_i4.Transaction>>.value(<_i4.Transaction>[]),
        returnValueForMissingStub:
            _i10.Future<List<_i4.Transaction>>.value(<_i4.Transaction>[]),
      ) as _i10.Future<List<_i4.Transaction>>);

  @override
  _i10.Future<Map<String, List<_i16.TransactionInput>>> getTransactionInputs(
    List<String>? addresses, {
    String? request =
        r'amount, from, tokenAddress, spent, tokenId, timestamp, type',
    int? limit = 0,
    int? pagingOffset = 0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactionInputs,
          [addresses],
          {
            #request: request,
            #limit: limit,
            #pagingOffset: pagingOffset,
          },
        ),
        returnValue:
            _i10.Future<Map<String, List<_i16.TransactionInput>>>.value(
                <String, List<_i16.TransactionInput>>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, List<_i16.TransactionInput>>>.value(
                <String, List<_i16.TransactionInput>>{}),
      ) as _i10.Future<Map<String, List<_i16.TransactionInput>>>);

  @override
  _i10.Future<Map<String, _i4.Transaction>> getTransaction(
    List<String>? addresses, {
    String? request =
        r' address, balance { token { address, amount }, uco }, chainLength, crossValidationStamps { nodePublicKey, signature }, data { content,  ownerships {  authorizedPublicKeys { encryptedSecretKey, publicKey } secret } ledger { uco { transfers { amount, to } }, token { transfers { amount, to, tokenAddress, tokenId } } } recipients, actionRecipients { action address args } } inputs { amount, from, tokenAddress, spent, tokenId, timestamp, type, }, originSignature, previousAddress, previousPublicKey, previousSignature, type, validationStamp { proofOfIntegrity, proofOfWork, signature, timestamp, ledgerOperations { fee, unspentOutputs { state } } }, version',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransaction,
          [addresses],
          {#request: request},
        ),
        returnValue: _i10.Future<Map<String, _i4.Transaction>>.value(
            <String, _i4.Transaction>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, _i4.Transaction>>.value(
                <String, _i4.Transaction>{}),
      ) as _i10.Future<Map<String, _i4.Transaction>>);

  @override
  _i10.Future<_i3.TransactionFee> getTransactionFee(
          _i4.Transaction? transaction) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactionFee,
          [transaction],
        ),
        returnValue:
            _i10.Future<_i3.TransactionFee>.value(_FakeTransactionFee_1(
          this,
          Invocation.method(
            #getTransactionFee,
            [transaction],
          ),
        )),
        returnValueForMissingStub:
            _i10.Future<_i3.TransactionFee>.value(_FakeTransactionFee_1(
          this,
          Invocation.method(
            #getTransactionFee,
            [transaction],
          ),
        )),
      ) as _i10.Future<_i3.TransactionFee>);

  @override
  _i10.Future<Map<String, List<_i17.Ownership>>> getTransactionOwnerships(
          List<String>? addresses) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactionOwnerships,
          [addresses],
        ),
        returnValue: _i10.Future<Map<String, List<_i17.Ownership>>>.value(
            <String, List<_i17.Ownership>>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, List<_i17.Ownership>>>.value(
                <String, List<_i17.Ownership>>{}),
      ) as _i10.Future<Map<String, List<_i17.Ownership>>>);

  @override
  _i4.Transaction newKeychainTransaction(
    String? seed,
    List<String>? authorizedPublicKeys,
    _i18.Uint8List? originPrivateKey,
    int? blockchainTxVersion, {
    Map<String, String>? servicesMap,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #newKeychainTransaction,
          [
            seed,
            authorizedPublicKeys,
            originPrivateKey,
            blockchainTxVersion,
          ],
          {#servicesMap: servicesMap},
        ),
        returnValue: _FakeTransaction_2(
          this,
          Invocation.method(
            #newKeychainTransaction,
            [
              seed,
              authorizedPublicKeys,
              originPrivateKey,
              blockchainTxVersion,
            ],
            {#servicesMap: servicesMap},
          ),
        ),
        returnValueForMissingStub: _FakeTransaction_2(
          this,
          Invocation.method(
            #newKeychainTransaction,
            [
              seed,
              authorizedPublicKeys,
              originPrivateKey,
              blockchainTxVersion,
            ],
            {#servicesMap: servicesMap},
          ),
        ),
      ) as _i4.Transaction);

  @override
  _i4.Transaction newAccessKeychainTransaction(
    String? seed,
    _i18.Uint8List? keychainAddress,
    _i18.Uint8List? originPrivateKey,
    int? blockchainTxVersion,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #newAccessKeychainTransaction,
          [
            seed,
            keychainAddress,
            originPrivateKey,
            blockchainTxVersion,
          ],
        ),
        returnValue: _FakeTransaction_2(
          this,
          Invocation.method(
            #newAccessKeychainTransaction,
            [
              seed,
              keychainAddress,
              originPrivateKey,
              blockchainTxVersion,
            ],
          ),
        ),
        returnValueForMissingStub: _FakeTransaction_2(
          this,
          Invocation.method(
            #newAccessKeychainTransaction,
            [
              seed,
              keychainAddress,
              originPrivateKey,
              blockchainTxVersion,
            ],
          ),
        ),
      ) as _i4.Transaction);

  @override
  _i10.Future<_i5.Keychain> getKeychain(String? seed) => (super.noSuchMethod(
        Invocation.method(
          #getKeychain,
          [seed],
        ),
        returnValue: _i10.Future<_i5.Keychain>.value(_FakeKeychain_3(
          this,
          Invocation.method(
            #getKeychain,
            [seed],
          ),
        )),
        returnValueForMissingStub:
            _i10.Future<_i5.Keychain>.value(_FakeKeychain_3(
          this,
          Invocation.method(
            #getKeychain,
            [seed],
          ),
        )),
      ) as _i10.Future<_i5.Keychain>);

  @override
  String getOriginKey() => (super.noSuchMethod(
        Invocation.method(
          #getOriginKey,
          [],
        ),
        returnValue: _i13.dummyValue<String>(
          this,
          Invocation.method(
            #getOriginKey,
            [],
          ),
        ),
        returnValueForMissingStub: _i13.dummyValue<String>(
          this,
          Invocation.method(
            #getOriginKey,
            [],
          ),
        ),
      ) as String);

  @override
  _i10.Future<String> addOriginKey({
    String? originPublicKey,
    String? certificate,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #addOriginKey,
          [],
          {
            #originPublicKey: originPublicKey,
            #certificate: certificate,
          },
        ),
        returnValue: _i10.Future<String>.value(_i13.dummyValue<String>(
          this,
          Invocation.method(
            #addOriginKey,
            [],
            {
              #originPublicKey: originPublicKey,
              #certificate: certificate,
            },
          ),
        )),
        returnValueForMissingStub:
            _i10.Future<String>.value(_i13.dummyValue<String>(
          this,
          Invocation.method(
            #addOriginKey,
            [],
            {
              #originPublicKey: originPublicKey,
              #certificate: certificate,
            },
          ),
        )),
      ) as _i10.Future<String>);

  @override
  _i10.Future<Map<String, _i19.Token>> getToken(
    List<String>? addresses, {
    String? request =
        r'genesis, name, id, supply, symbol, type, properties, decimals, collection, ownerships { authorizedPublicKeys { encryptedSecretKey,  publicKey }, secret }',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getToken,
          [addresses],
          {#request: request},
        ),
        returnValue:
            _i10.Future<Map<String, _i19.Token>>.value(<String, _i19.Token>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, _i19.Token>>.value(<String, _i19.Token>{}),
      ) as _i10.Future<Map<String, _i19.Token>>);

  @override
  _i10.Future<List<_i20.Endpoint>> getNearestEndpoints() => (super.noSuchMethod(
        Invocation.method(
          #getNearestEndpoints,
          [],
        ),
        returnValue: _i10.Future<List<_i20.Endpoint>>.value(<_i20.Endpoint>[]),
        returnValueForMissingStub:
            _i10.Future<List<_i20.Endpoint>>.value(<_i20.Endpoint>[]),
      ) as _i10.Future<List<_i20.Endpoint>>);

  @override
  _i10.Future<_i6.Address> getGenesisAddress(String? address) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGenesisAddress,
          [address],
        ),
        returnValue: _i10.Future<_i6.Address>.value(_FakeAddress_4(
          this,
          Invocation.method(
            #getGenesisAddress,
            [address],
          ),
        )),
        returnValueForMissingStub:
            _i10.Future<_i6.Address>.value(_FakeAddress_4(
          this,
          Invocation.method(
            #getGenesisAddress,
            [address],
          ),
        )),
      ) as _i10.Future<_i6.Address>);

  @override
  _i10.Future<List<dynamic>> callSCFunctionMulti(
          {required List<_i21.SCCallFunctionRequest>? jsonRPCRequests}) =>
      (super.noSuchMethod(
        Invocation.method(
          #callSCFunctionMulti,
          [],
          {#jsonRPCRequests: jsonRPCRequests},
        ),
        returnValue: _i10.Future<List<dynamic>>.value(<dynamic>[]),
        returnValueForMissingStub:
            _i10.Future<List<dynamic>>.value(<dynamic>[]),
      ) as _i10.Future<List<dynamic>>);

  @override
  _i10.Future<Object> callSCFunction({
    required _i21.SCCallFunctionRequest? jsonRPCRequest,
    bool? resultMap = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #callSCFunction,
          [],
          {
            #jsonRPCRequest: jsonRPCRequest,
            #resultMap: resultMap,
          },
        ),
        returnValue: _i10.Future<Object>.value(_FakeObject_5(
          this,
          Invocation.method(
            #callSCFunction,
            [],
            {
              #jsonRPCRequest: jsonRPCRequest,
              #resultMap: resultMap,
            },
          ),
        )),
        returnValueForMissingStub: _i10.Future<Object>.value(_FakeObject_5(
          this,
          Invocation.method(
            #callSCFunction,
            [],
            {
              #jsonRPCRequest: jsonRPCRequest,
              #resultMap: resultMap,
            },
          ),
        )),
      ) as _i10.Future<Object>);

  @override
  _i10.Future<_i7.BlockchainVersionModel> getBlockchainVersion() =>
      (super.noSuchMethod(
        Invocation.method(
          #getBlockchainVersion,
          [],
        ),
        returnValue: _i10.Future<_i7.BlockchainVersionModel>.value(
            _FakeBlockchainVersionModel_6(
          this,
          Invocation.method(
            #getBlockchainVersion,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i10.Future<_i7.BlockchainVersionModel>.value(
                _FakeBlockchainVersionModel_6(
          this,
          Invocation.method(
            #getBlockchainVersion,
            [],
          ),
        )),
      ) as _i10.Future<_i7.BlockchainVersionModel>);

  @override
  void manageLinkException(dynamic result) => super.noSuchMethod(
        Invocation.method(
          #manageLinkException,
          [result],
        ),
        returnValueForMissingStub: null,
      );

  @override
  String setJsonRPCRequest(
    String? method,
    Object? params, {
    int? id = 1,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setJsonRPCRequest,
          [
            method,
            params,
          ],
          {#id: id},
        ),
        returnValue: _i13.dummyValue<String>(
          this,
          Invocation.method(
            #setJsonRPCRequest,
            [
              method,
              params,
            ],
            {#id: id},
          ),
        ),
        returnValueForMissingStub: _i13.dummyValue<String>(
          this,
          Invocation.method(
            #setJsonRPCRequest,
            [
              method,
              params,
            ],
            {#id: id},
          ),
        ),
      ) as String);

  @override
  dynamic getJsonRPCResult(String? body) => super.noSuchMethod(
        Invocation.method(
          #getJsonRPCResult,
          [body],
        ),
        returnValueForMissingStub: null,
      );

  @override
  String getJsonRPCResultString(String? body) => (super.noSuchMethod(
        Invocation.method(
          #getJsonRPCResultString,
          [body],
        ),
        returnValue: _i13.dummyValue<String>(
          this,
          Invocation.method(
            #getJsonRPCResultString,
            [body],
          ),
        ),
        returnValueForMissingStub: _i13.dummyValue<String>(
          this,
          Invocation.method(
            #getJsonRPCResultString,
            [body],
          ),
        ),
      ) as String);
}

/// A class which mocks [TokensRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockTokensRepositoryImpl extends _i1.Mock
    implements _i22.TokensRepositoryImpl {
  @override
  _i10.Future<Map<String, _i19.Token>> getTokensFromAddresses(
    List<String>? addresses,
    _i12.ApiService? apiService,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTokensFromAddresses,
          [
            addresses,
            apiService,
          ],
        ),
        returnValue:
            _i10.Future<Map<String, _i19.Token>>.value(<String, _i19.Token>{}),
        returnValueForMissingStub:
            _i10.Future<Map<String, _i19.Token>>.value(<String, _i19.Token>{}),
      ) as _i10.Future<Map<String, _i19.Token>>);

  @override
  _i10.Future<List<_i8.AEToken>> getTokensFromUserBalance(
    String? userGenesisAddress,
    List<String>? userTokenLocalAddresses,
    _i12.ApiService? apiService,
    List<_i23.GetPoolListResponse>? poolsListRaw,
    _i11.Environment? environment,
    _i9.DefTokensRepositoryImpl? defTokensRepositoryImpl,
    _i22.TokensRepositoryImpl? tokensRepositoryImpl, {
    bool? withUCO = true,
    bool? withVerified = true,
    bool? withLPToken = true,
    bool? withNotVerified = true,
    bool? withCustomToken = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTokensFromUserBalance,
          [
            userGenesisAddress,
            userTokenLocalAddresses,
            apiService,
            poolsListRaw,
            environment,
            defTokensRepositoryImpl,
            tokensRepositoryImpl,
          ],
          {
            #withUCO: withUCO,
            #withVerified: withVerified,
            #withLPToken: withLPToken,
            #withNotVerified: withNotVerified,
            #withCustomToken: withCustomToken,
          },
        ),
        returnValue: _i10.Future<List<_i8.AEToken>>.value(<_i8.AEToken>[]),
        returnValueForMissingStub:
            _i10.Future<List<_i8.AEToken>>.value(<_i8.AEToken>[]),
      ) as _i10.Future<List<_i8.AEToken>>);

  @override
  _i10.Future<_i8.AEToken> tokenModelToAETokenModel(
    _i19.Token? token,
    List<String>? verifiedTokens,
    List<_i23.GetPoolListResponse>? poolsListRaw,
    _i11.Environment? environment,
    _i12.ApiService? apiService,
    _i9.DefTokensRepositoryImpl? defTokensRepository,
    _i22.TokensRepositoryImpl? tokensRepository,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #tokenModelToAETokenModel,
          [
            token,
            verifiedTokens,
            poolsListRaw,
            environment,
            apiService,
            defTokensRepository,
            tokensRepository,
          ],
        ),
        returnValue: _i10.Future<_i8.AEToken>.value(_FakeAEToken_7(
          this,
          Invocation.method(
            #tokenModelToAETokenModel,
            [
              token,
              verifiedTokens,
              poolsListRaw,
              environment,
              apiService,
              defTokensRepository,
              tokensRepository,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i10.Future<_i8.AEToken>.value(_FakeAEToken_7(
          this,
          Invocation.method(
            #tokenModelToAETokenModel,
            [
              token,
              verifiedTokens,
              poolsListRaw,
              environment,
              apiService,
              defTokensRepository,
              tokensRepository,
            ],
          ),
        )),
      ) as _i10.Future<_i8.AEToken>);
}
