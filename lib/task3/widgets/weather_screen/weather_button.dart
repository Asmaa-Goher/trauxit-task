import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trauxit_task/task3/utilities/colors.dart';
import 'package:trauxit_task/task3/utilities/extensions.dart';
import 'package:trauxit_task/task3/widgets/weather_screen/weather_button/weather_data_result.dart';

import '../../blocs/weather_bloc/weather_bloc.dart';
import '../../utilities/ui_utilities.dart';

class WeatherButton extends StatelessWidget {
  const WeatherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherBloc, WeatherState>(
      builder: (context, state) {
        WeatherBloc weatherBloc = context.read<WeatherBloc>();
        return SizedBox(
          width: .5.screenWidth(context),
          child: state is GetCityWeatherLoading
              ? UiUtilities.showLoader()
              : ElevatedButton(
                  onPressed: weatherBloc.cityController.text.isNotEmpty
                      ? () {
                          weatherBloc.add(GetCityWeatherEvent());
                        }
                      : null,
                  child: const Text("Start")),
        );
      },
      listener: (BuildContext context, WeatherState state) {
        if (state is GetCityWeatherError) {
          UiUtilities.showSnackBar(txt: state.errorMessage, context: context);
        } else if (state is GetCityWeatherSuccess) {
          showModalBottomSheet(
            backgroundColor: App3Colors.mainColor,
              context: context, builder: (context) => const WeatherDataResult());
        }
      },
    );
  }
}
