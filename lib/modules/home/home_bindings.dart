import 'package:base_code/common/network/dio/dio_builder.dart';
import 'package:base_code/data/api/home_api.dart';
import 'package:base_code/data/repositories/home_repo/home_repo.dart';
import 'package:base_code/data/repositories/home_repo/home_repo_impl.dart';
import 'package:base_code/modules/home/home_viewmodel.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeApi(Get.find<DioBuilder>().getDio()));
    Get.lazyPut<HomeRepo>(() => HomeRepoImpl(Get.find()));
    Get.put(HomeViewModel(Get.find()));
  }
}
