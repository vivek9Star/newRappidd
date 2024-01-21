import 'package:flutter/material.dart';

class CustomGridViewBuilder extends StatelessWidget {
  final int? itemCount;
  final Function(BuildContext, int) itemBuilder;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? controller;
  final bool shrinkWrap;
  final EdgeInsetsGeometry padding;
  final double? itemExtent;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;


  CustomGridViewBuilder({
    required this.itemCount,
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    required this.controller,
    this.shrinkWrap = false,
    this.padding = const EdgeInsets.all(0.0),
    this.itemExtent,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      itemBuilder: (context,index){
        return null;
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
      ),
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      shrinkWrap: shrinkWrap,
      padding: padding,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,

    );
  }
}
