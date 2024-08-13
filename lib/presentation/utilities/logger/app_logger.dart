import 'package:logger/logger.dart';

class AppLogger {
  AppLogger._();

  static final AppLogger _instance = AppLogger._();
  static AppLogger get instance => _instance;

  late final Logger _lg;

  void init() {
    _lg = Logger(
      level: Level.all,
      filter: ProductionFilter(),
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 80,
        colors: true,
        printEmojis: true,
        dateTimeFormat: DateTimeFormat.dateAndTime,
      ),
    );
  }

  void logD(dynamic message) => _lg.d(message);

  void logI(dynamic message) => _lg.i(message);
  void logE(
    dynamic message, {
    StackTrace? stackTrace,
  }) =>
      _lg.e(message, stackTrace: stackTrace);
}
