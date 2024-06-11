import 'dart:async';
import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class LoggerSetup {
  LoggerSetup._();
  factory LoggerSetup.instance() => _instance ??= LoggerSetup._();

  static LoggerSetup? _instance;

  List<StreamSubscription<LogRecord>> _subscriptions = [];

  Future<void> setup() async {
    Logger.root.level = kDebugMode ? Level.ALL : Level.INFO;

    /// Note : When in debug mode, logs are displayed
    /// in debug console. There is no need to register log listeners.
    if (!kDebugMode) {
      await _registerLogListeners();
    }
  }

  Future<void> _registerLogListeners() async {
    for (final subscription in _subscriptions) {
      await subscription.cancel();
    }
    _subscriptions = [];

    if (kIsWeb) {
      _subscriptions.add(
        Logger.root.onRecord.listen((event) {
          debugPrint('[${event.loggerName}] ${event.message}');
          if (event.error != null) {
            debugPrint('\t${event.error}');
          }
          if (event.stackTrace != null) {
            debugPrint('\t${event.stackTrace}');
          }
        }),
      );
    }

    if (!kIsWeb) {
      Logger.root.onRecord.listen((event) {
        dev.log(
          event.message,
          name: event.loggerName,
          error: event.error,
          stackTrace: event.stackTrace,
          level: event.level.value,
          time: event.time,
          sequenceNumber: event.sequenceNumber,
          zone: event.zone,
        );
      });
    }
  }
}
