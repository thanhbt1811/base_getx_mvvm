import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  factory BookModel({
    required int id,
    required String name,
  }) = _BookModel;
  factory BookModel.fromJson(Map<String, Object?> json) =>
      _$BookModelFromJson(json);
}
