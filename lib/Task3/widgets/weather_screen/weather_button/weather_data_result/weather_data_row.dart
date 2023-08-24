import 'package:flutter/material.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';
import 'package:trauxit_task/task2/widgets/shared_widgets/build_text.dart';

class WeatherDataRow extends StatelessWidget {
  final String title;
  final String data;
  const WeatherDataRow({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildText(text: title, color: Colors.lightBlueAccent,
        fontWeight: FontWeight.bold,),
        .02.screenWidth(context).sizedBoxWidth(),
        BuildText(text: data, color: Colors.white,),
      ],
    );
  }
}
