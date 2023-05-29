import 'package:base_code/common/network/models/base_data.dart';
import 'package:base_code/data/models/book_model/book_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api.g.dart';

@RestApi()
abstract class HomeApi {
  factory HomeApi(Dio dio) = _HomeApi;

  @GET('/v1/book')
  Future<List<BookModel>> getBook();

  @GET('/v1/book/{id}')
  Future<BaseData<BookModel>> getBookById(@Path('id') int? id);
}
