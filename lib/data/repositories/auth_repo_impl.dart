import 'package:base_code/common/network/errors/error.dart';
import 'package:base_code/common/network/models/base_data.dart';
import 'package:base_code/data/api/auth/auth_api.dart';
import 'package:base_code/data/models/AuthModel/auth_model.dart';
import 'package:base_code/data/repositories/auth_repo.dart';
import 'package:base_code/data/requests/login_request.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthApi _authApi;

  AuthRepoImpl(this._authApi);

  @override
  Future<Either<BaseData<AuthModel>, BaseError>> login(
      LoginRequest request) async {
    try {
      final response = await _authApi.login(request.toJson());
      return left(response);
    } on Exception catch (error) {
      return right(
        BaseError.fromError(error),
      );
    }
  }
}
