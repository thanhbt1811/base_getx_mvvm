import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'token_type') String? tokenType,
    @JsonKey(name: 'expires_in') int? expiresIn,
    @JsonKey(name: 'user') UserModel? user,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, Object?> json) =>
      _$AuthModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'birthday') String? birthday,
    @JsonKey(name: 'job') int? job,
    @JsonKey(name: 'role') int? role,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
