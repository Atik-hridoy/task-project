import 'package:get/get.dart';

class SecondPageController extends GetxController {
  final selectedTab = 'Summery'.obs;
  final selectedSourceTab = 'Source'.obs;

  void changeTab(String tab) {
    selectedTab.value = tab;
  }

  void changeSourceTab(String tab) {
    selectedSourceTab.value = tab;
  }
}
