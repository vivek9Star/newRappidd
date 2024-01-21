import 'package:flutter/material.dart';



class CustomDottedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPaint(
                size: Size(350, 1), // Adjust the size of the dashed line as needed
                painter: DashedLinePainter(
                  color: Color(0xffABABAB),
                  dashLength: 5.0,
                  gapLength: 5.0,
                ),
              ),
            ],
          )
        );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashLength;
  final double gapLength;

  DashedLinePainter({
    this.color = Colors.black,
    this.dashLength = 5.0,
    this.gapLength = 5.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = 2.0; // Adjust the line thickness as needed

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashLength, 0),
        paint,
      );
      startX += dashLength + gapLength;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
