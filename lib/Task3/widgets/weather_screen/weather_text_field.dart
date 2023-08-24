import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/weather_bloc/weather_bloc.dart';
import '../shared_widgets/build_text_form_field.dart';

class WeatherTextField extends StatelessWidget {
  const WeatherTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        WeatherBloc weatherBloc = context.read<WeatherBloc>();
        return BuildTextFormField(
            controller: weatherBloc.cityController,
            label: "City name",
        onChange: (_){
              weatherBloc.add(EnterCityWeatherEvent());
        },);
      },
    );
  }
}
