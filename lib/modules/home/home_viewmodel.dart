import 'package:base_code/common/utils/message_utils.dart';
import 'package:base_code/data/repositories/home_repo/home_repo.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../data/models/book_model/book_model.dart';

class HomeViewModel extends GetxController {
  final HomeRepo _homeRepo;

  RxList<BookModel> books = <BookModel>[].obs;
  Rx<BookModel> book = BookModel(id: -1, name: '').obs;

  HomeViewModel(this._homeRepo);
  void onGet() async {
    EasyLoading.show();
    final response = await _homeRepo.getBook();
    EasyLoading.dismiss();
    response.fold(
      (bookList) {
        books.value = bookList;
      },
      (error) {
        print("error: $error");
        EasyLoading.showError(error.message);
      },
    );
  }

  void onTapBook(BookModel book) async {
    EasyLoading.show();
    final res = await _homeRepo.getBookById(6);
    EasyLoading.dismiss();
    res.fold((data) {
      this.book.value = data;
    }, (error) {
      MessagesUtils.showErrorMessage(error);
    });
  }
}
