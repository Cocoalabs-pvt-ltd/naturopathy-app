import 'package:dio/dio.dart';
import 'package:naturopathy/apis/api_provider.dart';
import 'package:naturopathy/apis/apis.dart';
import 'package:naturopathy/models/auth.dart';
import 'package:naturopathy/models/user.dart';

class AuthRepository {
  ApiProvider? _provider;

  Future<Auth> signUp(String data) async {
    Response response =
        await _provider!.getJsonInstance().post(Apis.signup, data: data);
    return Auth.fromJson(response.data);
  }

  Future<Auth> login(String data) async {
    Response response =
        await _provider!.getJsonInstance().post(Apis.login, data: data);
    return Auth.fromJson(response.data);
  }
}
