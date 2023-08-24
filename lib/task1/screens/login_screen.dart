import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/widgets/login_screen/bottom_curve_custom_paint.dart';
import 'package:trauxit_task/task1/widgets/login_screen/login_form.dart';
import 'package:trauxit_task/task1/widgets/login_screen/top_curves_custom_paint.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          TopCurveCustomPaint(),
          Expanded(
            child: LoginForm(),
          ),
          BottomCurveCustomPaint()
        ],
      ),
    );
  }
}
