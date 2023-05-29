import 'package:base_code/data/models/AuthModel/auth_model.dart';
import 'package:base_code/data/requests/login_request.dart';
import 'package:dartz/dartz.dart';

import '../../common/network/errors/error.dart';
import '../../common/network/models/base_data.dart';

abstract class AuthRepo {
  Future<Either<BaseData<AuthModel>, BaseError>> login(LoginRequest request);
}
