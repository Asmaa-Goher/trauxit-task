import 'package:flutter/material.dart';
import 'package:trauxit_task/task2/utilities/colors.dart';

class CounterTextButton extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  const CounterTextButton(
      {super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const CircleBorder()),
          backgroundColor: MaterialStateProperty.all(App2Colors.thirdColor),
          foregroundColor: MaterialStateProperty.all(App2Colors.mainColor),
        ),
        onPressed: onPressed,
        child: Icon(icon));
  }
}
