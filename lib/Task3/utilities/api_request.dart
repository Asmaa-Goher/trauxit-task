import 'package:dio/dio.dart';

class ApiRequest {
  late Dio dio;
  final String _api;

  ApiRequest(this._api);

  init() {
    dio = Dio(BaseOptions(
      baseUrl: _api,
    ));
  }

  Future<Response> getDataWithEndPoint({required String endpoint}) {
    return dio.get(endpoint);
  }

  Future<Response> getDataWithQueries(
      {required String city, required String apiKey}) {
    return dio.get(queryParameters: {"q": city, "appId": apiKey}, '');
  }
}
