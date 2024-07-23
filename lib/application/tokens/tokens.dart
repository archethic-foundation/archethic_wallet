import 'package:aewallet/infrastructure/repositories/tokens/tokens.repository.dart';
import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart';
import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tokens.g.dart';

@riverpod
TokensRepositoryImpl _tokensRepository(_TokensRepositoryRef ref) =>
    TokensRepositoryImpl();

@riverpod
Future<List<AEToken>> _getTokensList(
  _GetTokensListRef ref,
  String userGenesisAddress,
) async {
  final apiService = sl.get<ApiService>();

  return ref
      .watch(_tokensRepositoryProvider)
      .getTokensList(userGenesisAddress, apiService);
}

abstract class TokensProviders {
  static const getTokensList = _getTokensListProvider;
}