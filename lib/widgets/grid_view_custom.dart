import 'package:flutter/material.dart';

class GridViewCustom extends StatelessWidget {
  final List<Widget> children;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final ScrollController? scrollController;
  final EdgeInsets padding;
  final bool shrinkWrap;
  final Axis scrollDirection;

  const GridViewCustom({
    Key? key,
    required this.children,
    required this.crossAxisCount,
    this.mainAxisSpacing = 8,
    this.crossAxisSpacing = 8,
    this.scrollController,
    this.padding = const EdgeInsets.all(8),
    this.shrinkWrap = false,
    this.scrollDirection = Axis.vertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
      ),
      children: children,
      scrollDirection: scrollDirection,
      controller: scrollController,
      padding: padding,
      shrinkWrap: shrinkWrap,
    );
  }
}
