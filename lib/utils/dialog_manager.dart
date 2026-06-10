import 'package:flutter/material.dart';

class DialogManager {
  static Future<bool?> showYesNoDialog(
    BuildContext context, {
    required String title,
    required String message,
    String yesText = 'Yes',
    String noText = 'No',
  }) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(noText),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(yesText),
          ),
        ],
      ),
    );
  }

  static Future<String?> showInputDialog(
    BuildContext context, {
    required String title,
    String? hint,
    String submitText = 'Submit',
    String cancelText = 'Cancel',
  }) async {
    final controller = TextEditingController();
    return await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: hint),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(cancelText),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, controller.text),
            child: Text(submitText),
          ),
        ],
      ),
    );
  }

  static Future<void> showCustomDialog(
    BuildContext context, {
    required String title,
    required Widget content,
    List<Widget>? actions,
  }) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: content,
        actions: actions,
      ),
    );
  }
}
