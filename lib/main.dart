import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/bloc_observer/bloc_observer.dart';
import 'package:flutter_portfolio/injection/di.dart';
import 'package:flutter_portfolio/presentation/app/app.dart';
import 'package:flutter_portfolio/presentation/utilities/logger/app_logger.dart';

void main() async {
  Future<void> startApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = MyBlocObserver();

    await configureDependencies();

    await getIt.allReady();
    AppLogger.instance.init();

    runApp(const App());
  }

  await runZonedGuarded(() async {
    await startApp();
  }, (Object error, StackTrace stackTrace) {
    AppLogger.instance.logE('runZonedGuarded Error: $error');
    AppLogger.instance.logE('runZonedGuarded StackTrace: $stackTrace');
  });
}
