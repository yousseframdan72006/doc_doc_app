// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_complete_project/core/networking/api_error_handler.dart';
import 'package:flutter_complete_project/core/networking/api_result.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/featurs/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/featurs/login/data/models/login_response.dart';

class LoginRepo {
  ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    final response = await _apiService.login(loginRequestBody);
    try {
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handler(error));
    }
  }
}
