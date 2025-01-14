import 'package:aewallet/modules/aeswap/domain/models/util/get_pool_list_response.dart';
import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart'
    as aedappfm;
import 'package:archethic_lib_dart/archethic_lib_dart.dart' as archethic;

abstract class TokensRepository {
  Future<Map<String, archethic.Token>> getTokensFromAddresses(
    List<String> addresses,
  );

  Future<List<aedappfm.AEToken>> getTokensFromUserBalance(
    String userGenesisAddress,
    List<String> userTokenLocalAddresses,
    List<GetPoolListResponse> poolsListRaw,
    aedappfm.Environment environment, {
    bool withUCO = true,
    bool withVerified = true,
    bool withLPToken = true,
    bool withNotVerified = true,
    bool withCustomToken = true,
  });
}
