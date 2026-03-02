import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/constants/app_constants.dart';
import '../../data/excuse_data.dart';
import '../../app/routes/app_routes.dart';

class HomeController extends GetxController {
  final categories = excuseCategories.obs;

  void selectCategory(ExcuseCategory category) {
    Get.toNamed(AppRoutes.excuseType, arguments: category);
  }

  Future<void> openPrivacyPolicy() async {
    final Uri url = Uri.parse(AppConstants.privacyPolicyUrl);
    if (!await launchUrl(url)) {
      Get.snackbar('Error', 'Could not launch privacy policy');
    }
  }
}
