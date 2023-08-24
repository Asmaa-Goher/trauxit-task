import 'package:dio/dio.dart';
import 'package:trauxit_task/task3/utilities/api_keys.dart';

import '../utilities/api_request.dart';

abstract class PostsRepository {
  static late final ApiRequest apiRequest;
  static init() {
    apiRequest = ApiRequest(ApiKeys.postApi)..init();
  }

  static Future<Response> getPosts() async {
    return await apiRequest.getDataWithEndPoint(endpoint: 'posts');
  }
}
