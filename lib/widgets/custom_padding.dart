import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final double? top;
  final double? right;
  final double? bottom;
  final double? left;
  final Widget child;

  CustomPadding({
    //final EdgeInsetsGeometry padding;
    this.top,
    this.right,
    this.bottom,
    this.left,
    required this.child, required EdgeInsets padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top ?? 0.0,
        right: right ?? 0.0,
        bottom: bottom ?? 0.0,
        left: left ?? 0.0,
      ),
      child: child,
    );
  }
}
