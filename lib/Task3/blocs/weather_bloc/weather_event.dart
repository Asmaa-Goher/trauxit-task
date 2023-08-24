part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {}

class GetCityWeatherEvent extends WeatherEvent{}
class EnterCityWeatherEvent extends WeatherEvent{}