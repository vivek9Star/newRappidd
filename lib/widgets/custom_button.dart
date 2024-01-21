import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {

  final GestureTapCallback onPressed;
  final String label;
  final Color colorName;
  final double? width;
  final double? height;
  final FontWeight? fontWeight;
  final Color textColor;

  const CustomButton({Key? key,required this.onPressed,required this.label, required this.colorName, this.width, this.height, required this.fontWeight, required this.textColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0),
      child: RawMaterialButton(
        fillColor: colorName,
        splashColor: colorName,
        elevation: 0.0,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.0),
            color: colorName, shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Text(label,
                style: TextStyle(
                    color: textColor,
                    fontSize: 13,
                    letterSpacing: 0.5,
                    fontWeight: fontWeight)),
          ),
        ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
      ),
    );
  }
}
