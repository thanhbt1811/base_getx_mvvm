import 'package:base_code/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'common/config/flavor_config.dart';
import 'common/config/screen_utils_config.dart';
import 'common/enum/flavor_enum.dart';
import 'common/local_data/shared_pref.dart';
import 'common/network/dio/dio_builder.dart';
import 'generated/locales.g.dart';
import 'routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const flavor = String.fromEnvironment('flavor', defaultValue: 'dev');
  FlavorConfig(flavor: getFlavorFromEnv(flavor));
  _configLoading();
  runApp(ScreenUtilInit(
    designSize: const Size(
      ScreenUtilsConfig.designWidth,
      ScreenUtilsConfig.designHeight,
    ),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) => const MyApp(),
  ));
}

void _configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(seconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = ColorName.cinnamon[700]
    ..backgroundColor = ColorName.milkTea
    ..indicatorColor = ColorName.cinnamon[700]
    ..textColor = ColorName.cinnamon[700]
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      getPages: AppPages.routes,
      locale: Get.deviceLocale,
      initialRoute: AppPages.initial,
      builder: EasyLoading.init(),
      onInit: () {
        //todo: dynamic Link
      },
    );
  }
}

class AppBindings extends Bindings {
  @override
  void dependencies() {
    //Network
    // Get.put(() => Dio());
    Get.put<DioBuilder>(DioBuilder(), permanent: true);
    //Services
    Get.lazyPut<LocalStorage>(() => LocalStorageImpl());
  }
}
