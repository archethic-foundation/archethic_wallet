import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:aewallet/domain/rpc/command_dispatcher.dart';
import 'package:aewallet/infrastructure/rpc/dto/rpc_command_handler.dart';
import 'package:aewallet/infrastructure/rpc/get_endpoint/command_handler.dart';
import 'package:aewallet/infrastructure/rpc/send_transaction/command_handler.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:web_socket_channel/io.dart';

class ArchethicRPCServer {
  ArchethicRPCServer({
    required this.commandDispatcher,
  });

  static const LOG_NAME = 'RPC Server';
  static const HOST = '127.0.0.1';
  static const PORT = 12345;

  final CommandDispatcher commandDispatcher;

  static bool get isPlatformCompatible {
    return Platform.isLinux || Platform.isMacOS || Platform.isWindows;
  }

  Future<void> run() async {
    runZonedGuarded(
      () async {
        log('Starting at ws://$HOST:$PORT', name: LOG_NAME);
        final server = await HttpServer.bind(
          HOST,
          PORT,
          shared: true,
        );

        server.listen((HttpRequest request) async {
          log('Received request', name: LOG_NAME);

          final socket = await WebSocketTransformer.upgrade(request);
          final channel = IOWebSocketChannel(socket);

          final server = Peer(channel.cast<String>())
            ..registerMethod(
              'sendTransaction',
              (params) => _handle(RPCSendTransactionCommandHandler(), params),
            )
            ..registerMethod(
              'getEndpoint',
              (params) => _handle(RPCGetEndpointCommandHandler(), params),
            );

          await server.listen();
        });
      },
      (error, stack) {
        log(
          'WebSocket server failed',
          error: error,
          stackTrace: stack,
          name: LOG_NAME,
        );
      },
    );
  }

  Future<Map<String, dynamic>> _handle(
    RPCCommandHandler commandHandler,
    Parameters params,
  ) async {
    final result = await commandHandler.handle(params.value);
    return result.map(
      success: commandHandler.resultFromModel,
      failure: (failure) {
        log(
          'Command failed',
          name: LOG_NAME,
          error: failure,
        );

        throw RpcException(
          failure.code,
          failure.message ?? 'Command failed',
        );
      },
    );
  }
}

abstract class ExceptionUtil {
  static R guard<R>(
    R Function() call,
    Exception Function(Object) onError,
  ) {
    try {
      return call();
    } catch (e) {
      throw onError(e);
    }
  }
}
