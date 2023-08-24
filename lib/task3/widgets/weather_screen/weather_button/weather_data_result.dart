import 'package:flutter/material.dart';
import 'package:trauxit_task/task3/utilities/extensions.dart';
import 'package:trauxit_task/task3/widgets/weather_screen/weather_button/weather_data_result/weather_lat_long_temp.dart';
import 'package:trauxit_task/task3/widgets/weather_screen/weather_button/weather_data_result/weather_loc_country_clouds.dart';
import 'package:trauxit_task/task3/widgets/weather_screen/weather_image.dart';

class WeatherDataResult extends StatelessWidget {
  const WeatherDataResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: .5.screenWidth(context), child: const WeatherImage()),
        .03.screenHeight(context).sizedBoxHeight(),
        const WeatherLocCountryClouds(),
        .03.screenHeight(context).sizedBoxHeight(),
        const WeatherLatLongTemp()
      ],
    );
  }
}
