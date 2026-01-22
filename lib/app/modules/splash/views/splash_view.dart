import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';
import 'widgets/splash_logo_section.dart';
import 'widgets/login_form_widget.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0EA5E9),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const Expanded(
                  flex: 2,
                  child: Center(
                    child: SplashLogoSection(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
              ],
            ),
            Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeInOut,
              bottom: controller.showLoginForm.value ? 0 : -800.h,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {},
                child: const LoginFormWidget(),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
