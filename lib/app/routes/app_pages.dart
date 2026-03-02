import 'package:get/get.dart';
import '../routes/app_routes.dart';
import '../../features/splash/splash_screen.dart';
import '../../features/splash/splash_controller.dart';
import '../../features/home/home_screen.dart';
import '../../features/home/home_controller.dart';
import '../../features/excuse_type/excuse_type_screen.dart';
import '../../features/excuse_type/excuse_type_controller.dart';
import '../../features/excuse_result/excuse_result_screen.dart';
import '../../features/excuse_result/excuse_result_controller.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: BindingsBuilder(() {
        Get.put(SplashController());
      }),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      }),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.excuseType,
      page: () => const ExcuseTypeScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => ExcuseTypeController());
      }),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: AppRoutes.excuseResult,
      page: () => const ExcuseResultScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => ExcuseResultController());
      }),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}
