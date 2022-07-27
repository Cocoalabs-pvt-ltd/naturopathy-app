import 'package:naturopathy/models/auth.dart';
import 'package:naturopathy/repositories/auth_repository.dart';

class AuthBloc {
  late AuthRepository _repository;

  AuthBloc() {
    _repository = AuthRepository();
  }

  Future<Auth> signUp(String data) async {
    try {
      final response = await _repository.signUp(data);
      return response;
    } catch (err) {
      rethrow;
    }
  }

  Future<Auth> login(String data) async {
    try {
      final response = await _repository.login(data);
      return response;
    } catch (err) {
      rethrow;
    }
  }
}
