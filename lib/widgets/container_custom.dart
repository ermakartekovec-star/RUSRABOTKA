import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final BorderRadius? borderRadius;
  final Border? border;
  final double? width;
  final double? height;
  final BoxShadow? boxShadow;
  final VoidCallback? onTap;

  const ContainerCustom({
    Key? key,
    this.child,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(0),
    this.margin = const EdgeInsets.all(0),
    this.borderRadius,
    this.border,
    this.width,
    this.height,
    this.boxShadow,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
          border: border,
          boxShadow: boxShadow != null ? [boxShadow!] : null,
        ),
        child: child,
      ),
    );
  }
}
