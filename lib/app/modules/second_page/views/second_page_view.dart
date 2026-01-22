import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/second_page_controller.dart';
import 'widgets/navigate_button_widget.dart';
import 'widgets/electricity_section_widget.dart';
import 'widgets/data_views_section_widget.dart';
import 'widgets/action_buttons_section_widget.dart';

class SecondPageView extends GetView<SecondPageController> {
  const SecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '2nd Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined, color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 24.h),
          child: Column(
            children: [
              NavigateButtonWidget(
                text: '1st Page Navigate',
                onTap: () => Get.back(),
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    const ElectricitySectionWidget(),
                    SizedBox(height: 16.h),
                    const DataViewsSectionWidget(),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              const ActionButtonsSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
