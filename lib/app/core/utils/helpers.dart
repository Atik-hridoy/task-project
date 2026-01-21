import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Helpers {
  static bool get isDarkMode => Get.isDarkMode;

  static ThemeData get currentTheme => Get.theme;

  static TextTheme get textTheme => Get.textTheme;

  static ColorScheme get colorScheme => Get.theme.colorScheme;

  static void showSnackbar({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.BOTTOM,
    Duration duration = const Duration(seconds: 3),
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: position,
      duration: duration,
      backgroundColor: colorScheme.surface,
      colorText: colorScheme.onSurface,
    );
  }

  static void showLoading() {
    Get.dialog(
      Center(
        child: CircularProgressIndicator(
          color: colorScheme.primary,
        ),
      ),
      barrierDismissible: false,
    );
  }

  static void hideLoading() {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  }
}
