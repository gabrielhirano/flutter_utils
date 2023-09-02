import 'package:logger/logger.dart';

enum AppLoggerType { normal, info, warning, error, catastrophic }

abstract class AppLogger {
  void log(dynamic log, {AppLoggerType appLoggerType = AppLoggerType.normal});
}

class AppLoggerImpl extends AppLogger {
  final Logger _logger;
  AppLoggerImpl(this._logger);

  @override
  void log(log, {AppLoggerType appLoggerType = AppLoggerType.normal}) => switch (appLoggerType) {
        AppLoggerType.normal => _logger.i(log),
        AppLoggerType.info => _logger.i(log),
        AppLoggerType.warning => _logger.w(log),
        AppLoggerType.error => _logger.e(log),
        AppLoggerType.catastrophic => _logger.wtf(log)
      };
}
