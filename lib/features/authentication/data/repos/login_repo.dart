import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:doc_doc/core/networking/api_error_model.dart';
import 'package:doc_doc/core/networking/api_service.dart';

import '../models/login_request_body.dart';
import '../models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<Either<ApiErrorModel, LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return right(response);
    } catch (errro) {
      log(errro.toString());
      return left(ApiErrorModel(message: errro.toString()));
    }
  }
}
