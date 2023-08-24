import 'package:dio/dio.dart';

import '../utilities/api_keys.dart';
import '../utilities/api_request.dart';

abstract class WeatherRepository {
  static late final ApiRequest apiRequest;
  static init() {
    apiRequest = ApiRequest(ApiKeys.weatherApi)..init();
  }

  static Future<Response> getWeather({required String city}) async {
    return await apiRequest.getDataWithQueries(
        city: city, apiKey: ApiKeys.weatherApiKey);
  }
}
