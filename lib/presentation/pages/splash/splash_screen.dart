import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/app_config.dart';
import 'package:flutter_portfolio/gen/assets.gen.dart';
import 'package:flutter_portfolio/injection/di.dart';
import 'package:flutter_portfolio/presentation/navigation/app_router.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await _initialize();
    });
  }

  Future<void> _initialize() async {
    await getIt<AppConfig>().init();
    await _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));

    await getIt<AppRouter>().replace(const HomeRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.lottie.splashLoading.lottie(
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
