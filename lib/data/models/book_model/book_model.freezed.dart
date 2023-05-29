// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$$_BookModelCopyWith(
          _$_BookModel value, $Res Function(_$_BookModel) then) =
      __$$_BookModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_BookModelCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$_BookModel>
    implements _$$_BookModelCopyWith<$Res> {
  __$$_BookModelCopyWithImpl(
      _$_BookModel _value, $Res Function(_$_BookModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_BookModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookModel implements _BookModel {
  _$_BookModel({required this.id, required this.name});

  factory _$_BookModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'BookModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookModelCopyWith<_$_BookModel> get copyWith =>
      __$$_BookModelCopyWithImpl<_$_BookModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookModelToJson(
      this,
    );
  }
}

abstract class _BookModel implements BookModel {
  factory _BookModel({required final int id, required final String name}) =
      _$_BookModel;

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$_BookModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_BookModelCopyWith<_$_BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}
