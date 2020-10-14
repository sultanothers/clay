import 'package:flutter/material.dart';
import 'components/CurveBackground.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: CurvePainter(),
      ),
    );
  }
}
