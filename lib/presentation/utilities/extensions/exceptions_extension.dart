import 'package:flutter_portfolio/presentation/utilities/errors/app_error.dart';
import 'package:flutter_portfolio/presentation/utilities/logger/app_logger.dart';

extension ErrorExtension on Exception {
  String get message {
    return toString();
  }

  AppError? get appError {
    AppLogger.instance.logE(message);
    return AppError(
      message: message,
    );
  }
}
