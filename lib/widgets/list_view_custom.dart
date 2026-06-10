import 'package:flutter/material.dart';

class ListViewCustom extends StatelessWidget {
  final List<Widget> children;
  final Axis scrollDirection;
  final bool shrinkWrap;
  final ScrollController? scrollController;
  final EdgeInsets padding;
  final bool reverse;
  final ScrollPhysics? physics;

  const ListViewCustom({
    Key? key,
    required this.children,
    this.scrollDirection = Axis.vertical,
    this.shrinkWrap = false,
    this.scrollController,
    this.padding = const EdgeInsets.all(0),
    this.reverse = false,
    this.physics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: children,
      scrollDirection: scrollDirection,
      shrinkWrap: shrinkWrap,
      controller: scrollController,
      padding: padding,
      reverse: reverse,
      physics: physics,
    );
  }
}
