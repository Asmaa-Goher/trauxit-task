import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trauxit_task/Task3/utilities/extensions.dart';

import '../../../../blocs/weather_bloc/weather_bloc.dart';
import '../../../../models/weather_model.dart';
import 'weather_data_row.dart';

class WeatherLatLongTemp extends StatelessWidget {
  const WeatherLatLongTemp({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = context.read<WeatherBloc>().weatherModel;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WeatherDataRow(
                title: "Latitude", data: weatherModel.lat.toString()),
            .05.screenWidth(context).sizedBoxWidth(),
            WeatherDataRow(
                title: "Longitude", data: weatherModel.long.toString()),
          ],
        ),
        WeatherDataRow(
            title: "Temperature", data: weatherModel.temperature.toString()),
      ],
    );
  }
}
