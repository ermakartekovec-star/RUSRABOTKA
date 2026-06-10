import 'package:flutter/material.dart';

class ElevationHelper {
  static const double elevation0 = 0;
  static const double elevation1 = 1;
  static const double elevation2 = 2;
  static const double elevation3 = 3;
  static const double elevation4 = 4;
  static const double elevation6 = 6;
  static const double elevation8 = 8;
  static const double elevation12 = 12;
  static const double elevation16 = 16;
  static const double elevation24 = 24;

  static BoxShadow getShadow(double elevation) {
    return BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: elevation,
      spreadRadius: elevation / 2,
      offset: Offset(0, elevation / 2),
    );
  }
}
