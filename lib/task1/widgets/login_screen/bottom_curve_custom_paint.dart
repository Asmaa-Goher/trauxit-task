import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';

import 'bottom_curve_custom_paint/bottom_fsm_custom_painter.dart';

class BottomCurveCustomPaint extends StatelessWidget {
  const BottomCurveCustomPaint({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .15.screenHeight(context),
      width: 1.0.screenWidth(context),
      child: CustomPaint(
        painter: BottomFSMCustomPainter(),
      ),
    );
  }
}
