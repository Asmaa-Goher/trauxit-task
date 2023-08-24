import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';

import 'top_curve_custom_paint/top_fsm_custom_painter.dart';

class TopCurveCustomPaint extends StatelessWidget {
  const TopCurveCustomPaint({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: .35.screenHeight(context),
        width: 1.0.screenWidth(context),
        child: CustomPaint(
          painter: TopFSMCustomPainter(),
        ));
  }
}
