import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/colors.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';
import 'package:trauxit_task/task1/widgets/shared_widgets/build_text.dart';

class HomeRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const HomeRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.mainColor,
          size: 19,
        ),
        5.0.sizedBoxWidth(),
        BuildText(
          text: text,
          fontWeight: FontWeight.bold,
          fontSize: 13,
          height: 1,
        ),
      ],
    );
  }
}
