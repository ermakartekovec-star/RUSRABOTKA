import 'package:flutter/material.dart';

class SliverAppBarCustom extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final double expandedHeight;
  final bool floating;
  final bool snap;
  final bool pinned;
  final VoidCallback? onBackPressed;

  const SliverAppBarCustom({
    Key? key,
    required this.title,
    this.actions,
    this.flexibleSpace,
    this.expandedHeight = 200,
    this.floating = false,
    this.snap = false,
    this.pinned = true,
    this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SliverAppBar(
      title: Text(title),
      actions: actions,
      flexibleSpace: flexibleSpace,
      expandedHeight: expandedHeight,
      floating: floating,
      snap: snap,
      pinned: pinned,
      backgroundColor: colorScheme.primary,
      elevation: 0,
    );
  }
}
