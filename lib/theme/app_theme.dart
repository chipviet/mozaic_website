import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.lightTheme : ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Inter',
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Inter',
   
  );
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF0D1E3D);
  //
  Color get textColorNavbar => brightness == Brightness.light
      ? const Color(0xFFFFF8F2)
      : const Color(0xFFFFF8F2);
        //
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFFFFF8F2)
      : const Color(0xFFFFF8F2);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  //

}
