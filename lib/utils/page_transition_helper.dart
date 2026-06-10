import 'package:flutter/material.dart';

class PageTransitionHelper {
  static void navigateTo(
    BuildContext context, {
    required Widget page,
    required String routeName,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
        settings: RouteSettings(name: routeName),
      ),
    );
  }

  static void navigateToNamed(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    Navigator.pushNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static void navigateAndRemoveUntil(
    BuildContext context, {
    required Widget page,
    required String routeName,
  }) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => page,
        settings: RouteSettings(name: routeName),
      ),
      (Route<dynamic> route) => false,
    );
  }

  static void goBack(BuildContext context, {dynamic result}) {
    Navigator.pop(context, result);
  }
}
