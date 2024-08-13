import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/color/app_colors.dart';
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
        child: ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).smallerThan(MOBILE)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            const ResponsiveRowColumnItem(
              child: ResponsiveConstraints(
                conditionalConstraints: [
                  Condition.largerThan(
                    name: MOBILE,
                    value: BoxConstraints(
                      maxWidth: 200,
                      maxHeight: 200,
                    ),
                  ),
                  Condition.largerThan(
                    name: TABLET,
                    value: BoxConstraints(
                      maxWidth: 300,
                      maxHeight: 300,
                    ),
                  ),
                ],
                child: Column(
                  children: [
                    Text('Nguyễn Bảo Trung'),
                    Text('BaoTrung37'),
                    Text('Flutter Developer'),
                  ],
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: Container(
                height: 300,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
