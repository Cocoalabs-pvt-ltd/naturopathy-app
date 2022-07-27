import 'package:dio/dio.dart';

class ApiProvider {
  Dio? _dio;

  static String baseUrl = "http://localhost:3000/";

  ApiProvider() {
    BaseOptions baseOptions;

    baseOptions = BaseOptions(
      baseUrl: baseUrl,
      receiveTimeout: 3000,
      connectTimeout: 3000,
    );

    _dio = Dio(baseOptions);
  }

  Dio getJsonInstance() {
    _dio!.options.headers.addAll({"Content-Type": "application/json"});
    return _dio!;
  }

  Dio getMultipartInstance() {
    _dio!.options.headers.addAll({"Content-Type": "multipart/form-data"});
    return _dio!;
  }

  Dio getJsonInstanceAuth(token) {
    _dio!.options.baseUrl = "http://localhost:3000/";
    _dio!.options.headers.addAll({"authorization": "Bearer $token"});

    return _dio!;
  }
}
