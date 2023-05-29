import 'package:base_code/data/models/AuthModel/auth_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../common/network/models/base_data.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST('/login')
  Future<BaseData<AuthModel>> login(
    @Body() Map<String, dynamic> request,
  );
}
