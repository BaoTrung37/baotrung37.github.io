import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/color/app_colors.dart';
import 'package:flutter_portfolio/presentation/presentation.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.backgroundColor,
      body: Center(
        child: Text(
          'Home Screen',
          style: AppTextStyles.headingLarge.copyWith(
            color: context.colors.textPrimary,
          ),
        ),
      ),
    );
  }
}
