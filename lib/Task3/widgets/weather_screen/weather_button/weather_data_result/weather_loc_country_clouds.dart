import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/weather_bloc/weather_bloc.dart';
import '../../../../models/weather_model.dart';
import '../../../shared_widgets/build_text.dart';

class WeatherLocCountryClouds extends StatelessWidget {
  const WeatherLocCountryClouds({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = context.read<WeatherBloc>().weatherModel;

    return Column(
      children: [
        BuildText(
          text: "${weatherModel.location}, ${weatherModel.country}",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        BuildText(
          text: weatherModel.description,
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Colors.amber.shade900,
        ),
        BuildText(
          text: "${weatherModel.clouds} clouds",
          color: Colors.lightBlueAccent,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
