import 'package:flutter/material.dart';

class MediaQueryHelper {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isSmallScreen(BuildContext context) {
    return getScreenWidth(context) < 600;
  }

  static bool isMediumScreen(BuildContext context) {
    return getScreenWidth(context) >= 600 && getScreenWidth(context) < 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return getScreenWidth(context) >= 1200;
  }

  static double getScreenPadding(BuildContext context) {
    if (isSmallScreen(context)) return 8.0;
    if (isMediumScreen(context)) return 16.0;
    return 24.0;
  }
}
