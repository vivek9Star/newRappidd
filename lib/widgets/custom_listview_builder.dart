import 'package:flutter/material.dart';


class CustomListView extends StatelessWidget {
  final double? width;
  final double? height;
  final int? itemCount;
  final String? label;


  CustomListView(
      this.width, this.height, this.itemCount, this.label
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context,index){
          return Container(
            width: width,
            child: Text("label")

          );
        }),



    );
  }
}
