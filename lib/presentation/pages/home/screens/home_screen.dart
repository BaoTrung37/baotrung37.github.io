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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        color: Colors.red,
                      ),
                      const Text(
                        'Nguyễn Bảo Trung',
                        style: AppTextStyles.headingMedium,
                      ),
                      const Text(
                        'BaoTrung37',
                        style: AppTextStyles.headingSmallLight,
                      ),
                      const Text(
                        'Mobile Developer',
                        style: AppTextStyles.headingSmallLight,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: context.colors.primaryColor,
                        height: 1,
                      ),
                    ],
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
