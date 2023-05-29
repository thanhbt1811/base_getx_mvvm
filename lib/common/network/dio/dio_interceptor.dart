import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;

import '../../local_data/shared_pref.dart';
import '../../local_data/shared_pref_key.dart';

class DioInterceptor extends Interceptor {
  final Dio currentDio;

  DioInterceptor({required this.currentDio});
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final Map<String, dynamic> header = {};
    final accessToken =
        getx.Get.find<LocalStorage>().get(SharedPrefKey.accessToken);
    header.putIfAbsent('Authorization', () => accessToken);
    options.headers.addAll(header);
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
