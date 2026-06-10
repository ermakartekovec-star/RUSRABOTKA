import 'package:flutter/material.dart';

class TransitionManager {
  static PageRoute createSlideTransition({
    required Widget page,
    required AxisDirection direction,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween = Tween(begin: Offset.zero, end: const Offset(1.0, 0.0));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static PageRoute createFadeTransition({required Widget page}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  static PageRoute createScaleTransition({required Widget page}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
    );
  }
}
