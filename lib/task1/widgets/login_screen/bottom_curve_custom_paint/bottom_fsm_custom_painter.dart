import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class BottomFSMCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1
    Paint paintFill0 = Paint()
      ..color = AppColors.mainColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0026667, size.height * 0.0135000);
    path_0.cubicTo(
        size.width * 0.1039667,
        size.height * 0.7659000,
        size.width * 0.5423333,
        size.height * 0.8120000,
        size.width * 0.8333333,
        size.height * 0.9980000);
    path_0.quadraticBezierTo(size.width * 0.6258333, size.height * 1.0055000, 0,
        size.height * 1.0180000);
    path_0.quadraticBezierTo(size.width * 0.0018333, size.height * 0.7860000,
        size.width * 0.0026667, size.height * 0.0135000);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 2
    Paint paintFill1 = Paint()
      ..color = AppColors.thirdColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9977333, size.height * 0.0046000);
    path_1.quadraticBezierTo(size.width * 0.9977333, size.height * 0.5521000,
        size.width, size.height * 0.9900000);
    path_1.quadraticBezierTo(size.width * 0.5211000, size.height * 0.9975000,
        size.width * 0.3199333, size.height);
    path_1.cubicTo(
        size.width * 0.5602667,
        size.height * 0.4471000,
        size.width * 0.6409000,
        size.height * -0.0367000,
        size.width * 0.9977333,
        size.height * 0.0046000);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
