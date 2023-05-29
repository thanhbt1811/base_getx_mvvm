import 'dart:io';

import 'package:dio/dio.dart';

import 'error_type.dart';

class BaseError {
  ErrorType type;
  String message;
  int? code;
  dynamic errors; //TODO: refactor type with common error from api
  BaseError(
      {required this.type, required this.message, this.code, this.errors});

  factory BaseError.fromError(Exception error) {
    ErrorType type = ErrorType.unknown;
    String message = '';
    int code = -1;
    dynamic errors;
    if (error is DioError) {
      message = error.message ?? '';
      code = error.response?.statusCode ?? -1;
      switch (error.type) {
        case DioErrorType.connectionTimeout:
        case DioErrorType.receiveTimeout:
          type = ErrorType.timeOut;
          break;
        case DioErrorType.sendTimeout:
          type = ErrorType.network;
          break;
        case DioErrorType.badCertificate:
          type = ErrorType.certificate;
          break;
        case DioErrorType.badResponse:
          switch (code) {
            case HttpStatus.unauthorized:
              type = ErrorType.unAuthorized;
              break;
            case HttpStatus.notFound:
            case HttpStatus.badRequest:
            case HttpStatus.methodNotAllowed:
            case HttpStatus.internalServerError:
            case HttpStatus.badGateway:
            case HttpStatus.serviceUnavailable:
            case HttpStatus.gatewayTimeout:
              type = ErrorType.server;
              //TODO: handel error response from API
              final String errorMessage = error.response?.data['message'] ?? '';
              if (errorMessage.isNotEmpty) {
                message = errorMessage;
              }
              print(error.response);
              break;
            default:
              if (error.error is SocketException) {
                type = ErrorType.network;
              } else {
                type = ErrorType.unknown;
              }
              break;
          }
          break;
        case DioErrorType.cancel:
          type = ErrorType.cancel;
          break;
        case DioErrorType.connectionError:
          type = ErrorType.network;
          break;
        case DioErrorType.unknown:
          type = ErrorType.unknown;
          break;
        default:
          type = ErrorType.unknown;
          break;
      }
    } else {
      type = ErrorType.unknown;
      message = "Error: $error";
    }
    return BaseError(type: type, message: message, code: code, errors: errors);
  }
}
