import 'package:get/get.dart';

class SplashController extends GetxController {
  final showLoginForm = false.obs;

  @override
  void onInit() {
    super.onInit();
    _showLoginFormAfterDelay();
  }

  void _showLoginFormAfterDelay() {
    Future.delayed(const Duration(seconds: 2), () {
      showLoginForm.value = true;
    });
  }
}
