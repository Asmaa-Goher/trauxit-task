import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:trauxit_task/task3/models/weather_model.dart';
import 'package:trauxit_task/task3/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final TextEditingController cityController = TextEditingController();
  late WeatherModel weatherModel;
  WeatherBloc() : super(WeatherInitial()) {
    WeatherRepository.init();
    on<GetCityWeatherEvent>(_getCityWeather);
    on<EnterCityWeatherEvent>(_enterCityWeather);
  }

  void _getCityWeather(
      GetCityWeatherEvent event, Emitter<WeatherState> emit) async {
    emit(GetCityWeatherLoading());
    String cityName = cityController.text;
    cityController.clear();
    try {
      Response weatherResponse =
          await WeatherRepository.getWeather(city: cityName);
      weatherModel = WeatherModel.fromJson(weatherResponse.data);
      emit(GetCityWeatherSuccess());
    } catch (e) {
      if (e is DioException) {
        if (e.response != null) {
          emit(GetCityWeatherError(
              "There is no weather available to this city name"));
        } else if (e.error is SocketException) {
          emit(GetCityWeatherError("Network connection error"));
        }
      }
    }
  }

  void _enterCityWeather(
      EnterCityWeatherEvent event, Emitter<WeatherState> emit) {
    emit(CityWeatherNameChanged());
  }
}
