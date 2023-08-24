import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class TopFSMCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1 Copy
    Paint paintFill0 = Paint()
      ..color = AppColors.thirdColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 1.0019500, size.height * 0.1830870);
    path_0.quadraticBezierTo(size.width * 1.0014250, size.height * 0.8406957,
        size.width * 1.0012000, size.height * 1.0217174);
    path_0.quadraticBezierTo(size.width * 0.5080250, size.height * 0.9573478,
        size.width * 0.5034250, size.height * 0.6566739);
    path_0.lineTo(size.width * 0.6769500, size.height * 0.1719130);
    path_0.close();
    path_0.lineTo(size.width * 1.0019500, size.height * 0.1830870);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1 Copy

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 1

    Paint paintFill1 = Paint()
      ..color = AppColors.mainColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5968750, size.height * 0.8409130);
    path_1.cubicTo(
        size.width * 0.4303500,
        size.height * 0.9165870,
        size.width * 0.1605000,
        size.height * 0.6879565,
        size.width * -0.0016250,
        size.height * 0.6659130);
    path_1.cubicTo(
        size.width * -0.0015000,
        size.height * 0.6098043,
        size.width * -0.0012250,
        size.height * 0.5012174,
        size.width * -0.0011000,
        size.height * 0.4385652);
    path_1.cubicTo(
        size.width * 0.2453500,
        size.height * 0.6315870,
        size.width * 0.2357500,
        size.height * 0.1727609,
        size.width * 0.3358000,
        size.height * 0.1024783);
    path_1.cubicTo(
        size.width * 0.7691750,
        size.height * -0.0369348,
        size.width * 0.8183750,
        size.height * -0.0062826,
        size.width * 0.9983000,
        size.height * -0.0094783);
    path_1.cubicTo(
        size.width * 0.9972250,
        size.height * 0.2382826,
        size.width * 0.9959750,
        size.height * 0.0137826,
        size.width * 0.9978000,
        size.height * 0.2423478);
    path_1.cubicTo(
        size.width * 0.3693750,
        size.height * 0.3379348,
        size.width * 0.9397750,
        size.height * 0.6562826,
        size.width * 0.5968750,
        size.height * 0.8409130);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // Layer 1

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paintStroke1);

    // Layer 1 Copy

    Paint paintFill2 = Paint()
      ..color = AppColors.secondColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8222500, size.height * -0.0093261);
    path_2.cubicTo(
        size.width * 0.6651000,
        size.height * 0.1809130,
        size.width * 0.3582500,
        size.height * 0.0210870,
        size.width * 0.2758250,
        size.height * 0.2585870);
    path_2.cubicTo(
        size.width * 0.1860750,
        size.height * 0.5609130,
        size.width * 0.1021250,
        size.height * 0.5371087,
        size.width * -0.0021250,
        size.height * 0.4660435);
    path_2.quadraticBezierTo(size.width * -0.0021250, size.height * 0.3464783,
        size.width * -0.0021750, size.height * -0.0093478);
    path_2.quadraticBezierTo(size.width * 0.2634500, size.height * -0.0146739,
        size.width * 0.8222500, size.height * -0.0093261);
    path_2.close();

    canvas.drawPath(path_2, paintFill2);

    // Layer 1 Copy

    Paint paintStroke2 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_2, paintStroke2);

    // Text Layer 1

    canvas.save();
    final pivot_2675074106960 = Offset(size.width * 0.30, size.height * 0.51);
    canvas.translate(pivot_2675074106960.dx, pivot_2675074106960.dy);
    canvas.rotate(0.0);
    canvas.translate(-pivot_2675074106960.dx, -pivot_2675074106960.dy);
    TextPainter tp_2675074106960 = TextPainter(
      text: TextSpan(
          text: "Welcome \n Trauxit",
          style: TextStyle(
            fontSize: size.width * 0.06,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          )),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(maxWidth: size.width * 0.34, minWidth: size.width * 0.34);
    tp_2675074106960.paint(canvas, pivot_2675074106960);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
