import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handler(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection to server failed");
        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to the server was cancelled");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connection timeout with the server");
        case DioExceptionType.unknown:
          return ApiErrorModel(
            message:
                "Connection to the server failed due to internet connection",
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message: "Receive timeout in connection with the server",
          );
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message: "Send timeout in connection with the server",
          );
        case DioExceptionType.badResponse:
          return _handelError(error.response!.data);
        default:
          return ApiErrorModel(message: "Something went wrong");
      }
    } else {
      return ApiErrorModel(message: "Something went wrong");
    }
  }
}

ApiErrorModel _handelError(dynamic data) {
  return ApiErrorModel(
    message: data["message"] ?? "Unknow error occurred",
    code: data['code'],
    errors: data['data'],
  );
}
