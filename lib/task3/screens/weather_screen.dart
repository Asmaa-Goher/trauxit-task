import 'package:flutter/material.dart';
import 'package:trauxit_task/task3/utilities/colors.dart';
import 'package:trauxit_task/task3/widgets/weather_screen/weather_button.dart';
import 'package:trauxit_task/task3/widgets/weather_screen/weather_image.dart';
import 'package:trauxit_task/task3/widgets/weather_screen/weather_text_field.dart';
import 'package:trauxit_task/task1/utilities/extensions.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App3Colors.mainColor,
      body: Center(
        child: SizedBox(
          width: .5.screenWidth(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const WeatherImage(),
              .05.screenHeight(context).sizedBoxHeight(),
              const WeatherTextField(),
              .05.screenHeight(context).sizedBoxHeight(),
              const WeatherButton()
            ],
          ),
        ),
      ),
    );
  }
}
