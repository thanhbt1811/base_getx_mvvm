import 'package:base_code/modules/home/home_bindings.dart';
import 'package:base_code/modules/home/home_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.home;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
        name: AppRoutes.home,
        page: () => const HomePage(),
        binding: HomeBindings()),
  ];
}
