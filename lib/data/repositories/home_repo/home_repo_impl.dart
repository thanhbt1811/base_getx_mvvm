import 'package:base_code/common/network/errors/error.dart';
import 'package:base_code/data/api/home_api.dart';
import 'package:base_code/data/models/book_model/book_model.dart';
import 'package:base_code/data/repositories/home_repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeApi _homeApi;

  HomeRepoImpl(this._homeApi);
  @override
  Future<Either<List<BookModel>, BaseError>> getBook() async {
    try {
      final response = await _homeApi.getBook();
      return left(response);
    } on Exception catch (error) {
      return right(
        BaseError.fromError(error),
      );
    }
  }

  @override
  Future<Either<BookModel, BaseError>> getBookById(int? id) async {
    try {
      final response = await _homeApi.getBookById(id);
      return left(response.data!);
    } on Exception catch (error) {
      return right(
        BaseError.fromError(error),
      );
    } catch (error) {
      return right(
        BaseError.fromError(
          Exception(error),
        ),
      );
    }
  }
}
