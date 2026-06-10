import 'package:flutter/material.dart';

class MenuManager {
  static Future<T?> showPopupMenu<T>(
    BuildContext context, {
    required Offset offset,
    required List<PopupMenuEntry<T>> items,
  }) async {
    return await showMenu<T>(
      context: context,
      position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
      items: items,
    );
  }

  static List<PopupMenuEntry<String>> buildMenuItems(List<String> items) {
    return items
        .map((item) => PopupMenuItem<String>(
              value: item,
              child: Text(item),
            ))
        .toList();
  }
}
