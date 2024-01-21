import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final BoxDecoration? decoration;
  final double? width;
  final double? height;
  final Widget? child;
  final Color? color;
  final Matrix4? transform;
  final Opacity? opacity;




  CustomContainerWidget({
    this.decoration,
    this.width,
    this.height,
    this.child,
    this.color,
    this.transform,
    this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: child,
      color: color?.withOpacity(opacity as double),
      transform: transform,

    );
  }

}