import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  final Widget? leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final EdgeInsets contentPadding;
  final bool dense;

  const ListTileCustom({
    Key? key,
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.backgroundColor,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.dense = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      color: backgroundColor,
      child: ListTile(
        leading: leading,
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: trailing,
        onTap: onTap,
        contentPadding: contentPadding,
        dense: dense,
      ),
    );
  }
}
