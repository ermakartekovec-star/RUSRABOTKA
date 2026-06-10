import 'package:flutter/material.dart';

class SizeHelper {
  // Extra small
  static const double xs = 4;
  // Small
  static const double sm = 8;
  // Medium
  static const double md = 16;
  // Large
  static const double lg = 24;
  // Extra Large
  static const double xl = 32;
  // 2X Large
  static const double xxl = 48;
  // 3X Large
  static const double xxxl = 64;

  static EdgeInsets paddingAll(double size) => EdgeInsets.all(size);
  static EdgeInsets paddingSymmetric({double horizontal = 0, double vertical = 0}) =>
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  static EdgeInsets paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);
}
