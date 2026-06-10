import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;
  final List<BottomNavigationBarItem> items;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;

  const BottomNavigationBarCustom({
    Key? key,
    required this.currentIndex,
    required this.onIndexChanged,
    required this.items,
    this.backgroundColor,
    this.selectedItemColor,
    this.unselectedItemColor,
  }) : super(key: key);

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onIndexChanged,
      items: widget.items,
      backgroundColor: widget.backgroundColor ?? colorScheme.surface,
      selectedItemColor: widget.selectedItemColor ?? colorScheme.primary,
      unselectedItemColor:
          widget.unselectedItemColor ?? colorScheme.onSurfaceVariant,
      elevation: 8,
    );
  }
}
