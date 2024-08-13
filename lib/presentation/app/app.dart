import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portfolio/config/app_config.dart';
import 'package:flutter_portfolio/config/theme/app_theme.dart';
import 'package:flutter_portfolio/injection/di.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';
import 'package:flutter_portfolio/presentation/app/cubit/app_cubit.dart';
import 'package:flutter_portfolio/presentation/navigation/app_router.dart';
import 'package:flutter_portfolio/presentation/utilities/enums/common/languages.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (contExt) => getIt<AppCubit>(),
      child: BlocBuilder<AppCubit, AppState>(
        buildWhen: (previous, current) =>
            previous.currentLanguage != current.currentLanguage,
        builder: (context, state) {
          return MaterialApp.router(
            title: getIt<AppConfig>().title,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              // GlobalMaterialLocalizations.delegate,
              // GlobalWidgetsLocalizations.delegate,
              // GlobalCupertinoLocalizations.delegate,
            ],
            theme: getThemeData(Brightness.light),
            locale: state.currentLanguage.locate,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: getIt<AppRouter>().config(),
          );
        },
      ),
    );
  }
}
