import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/color/app_colors.dart';
import 'package:flutter_portfolio/presentation/presentation.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: context.colors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Home Screen',
              style: AppTextStyles.headingLarge.copyWith(
                color: context.colors.textPrimary,
              ),
            ),
            ResponsiveRowColumn(
              layout: ResponsiveBreakpoints.of(context).isDesktop
                  ? ResponsiveRowColumnType.ROW
                  : ResponsiveRowColumnType.COLUMN,
              columnCrossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ResponsiveRowColumnItem(
                  child: Container(
                    width: width * 0.24,
                    height: 300,
                    color: Colors.red,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Container(
                    width: width * 0.24,
                    height: 300,
                    color: Colors.green,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Container(
                    width: width * 0.24,
                    height: 300,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
