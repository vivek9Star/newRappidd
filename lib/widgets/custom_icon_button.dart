import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  final Size size;
  final Color color;

  CustomIconButton({
    required this.iconData,
    required this.onPressed,
    required this.size,
    required this.color,
  });

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        widget.iconData,
      ),
      onPressed: widget.onPressed,
      color: widget.color,

    );
  }
}
