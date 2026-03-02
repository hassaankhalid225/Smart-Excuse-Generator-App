import 'package:get/get.dart';
import '../../data/excuse_data.dart';
import '../../app/routes/app_routes.dart';

class ExcuseTypeController extends GetxController {
  late ExcuseCategory category;

  @override
  void onInit() {
    super.onInit();
    category = Get.arguments as ExcuseCategory;
  }

  void selectType(String type) {
    Get.toNamed(AppRoutes.excuseResult, arguments: {
      'category': category,
      'type': type,
    });
  }
}
