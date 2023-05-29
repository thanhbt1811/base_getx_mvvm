import 'package:base_code/common/network/errors/error.dart';
import 'package:base_code/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<List<BookModel>, BaseError>> getBook();
  Future<Either<BookModel, BaseError>> getBookById(int? id);
}
