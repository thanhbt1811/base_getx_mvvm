import 'package:base_code/common/config/env_config.dart';
import 'package:dio/dio.dart';

import '../../../common/logger/index.dart';
import 'dio_interceptor.dart';

class DioBuilder {
  Dio? dio;

  Dio getDio() {
    if (dio == null) {
      final BaseOptions options = BaseOptions(
        baseUrl: getUrl(),
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(milliseconds: 20000),
        receiveTimeout: const Duration(milliseconds: 20000),
        headers: {"accept": "*/*"},
      );
      dio = Dio(options);
      dio?.options.headers['content-Type'] = 'Application/json';
      dio?.interceptors.addAll(
        [
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseHeader: true,
          ),
          DioInterceptor(currentDio: dio!),
        ],
      );
    }
    return dio!;
  }

  String getUrl() {
    return Environment.instance.baseUrl;
  }
}
