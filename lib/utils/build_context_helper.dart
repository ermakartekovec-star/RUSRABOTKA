import 'package:flutter/material.dart';

class BuildContextHelper {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  static ThemeData getTheme(BuildContext context) {
    return Theme.of(context);
  }

  static ColorScheme getColorScheme(BuildContext context) {
    return Theme.of(context).colorScheme;
  }

  static TextTheme getTextTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  static Brightness getBrightness(BuildContext context) {
    return MediaQuery.of(context).platformBrightness;
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
