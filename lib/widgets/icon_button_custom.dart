import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final String? tooltip;
  final Color? color;
  final double? size;
  final double? splashRadius;
  final EdgeInsets padding;

  const IconButtonCustom({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.tooltip,
    this.color,
    this.size,
    this.splashRadius,
    this.padding = const EdgeInsets.all(8),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      tooltip: tooltip,
      color: color ?? colorScheme.onSurface,
      iconSize: size,
      splashRadius: splashRadius,
      padding: padding,
    );
  }
}
