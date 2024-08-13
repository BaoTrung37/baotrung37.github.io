import 'package:flutter/material.dart';
import 'package:flutter_portfolio/config/color/app_colors.dart';

ThemeData getThemeData(Brightness brightness) {
  final colors = brightness == Brightness.light ? colorsLight : colorsDark;
  return ThemeData(
    brightness: brightness,
    scaffoldBackgroundColor: colors.backgroundColor,
    primaryColor: colors.primaryColor,
  );
}
