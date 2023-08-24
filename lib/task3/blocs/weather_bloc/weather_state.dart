part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class GetCityWeatherLoading extends WeatherState {}

class GetCityWeatherError extends WeatherState {
  final String errorMessage;

  GetCityWeatherError(this.errorMessage);
}

class GetCityWeatherSuccess extends WeatherState {}
class CityWeatherNameChanged extends WeatherState {}
