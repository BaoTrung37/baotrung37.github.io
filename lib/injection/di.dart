import 'package:flutter/material.dart';
import 'package:flutter_portfolio/injection/di.config.dart';
import 'package:flutter_portfolio/presentation/navigation/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@InjectableInit(
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  getIt.init();
  getIt.registerSingleton(AppRouter(navigatorKey: navigatorKey));
}
