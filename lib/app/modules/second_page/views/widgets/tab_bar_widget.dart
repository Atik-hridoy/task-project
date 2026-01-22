import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/second_page_controller.dart';

class TabBarWidget extends GetView<SecondPageController> {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
            ),
          ),
          child: Row(
            children: [
              _buildTab('Summery', 0),
              _buildTab('SLD', 1),
              _buildTab('Data', 2),
            ],
          ),
        ),
        Container(
          height: 1,
          color: const Color(0xFFE0E0E0),
        ),
      ],
    ));
  }

  Widget _buildTab(String title, int index) {
    final isSelected = controller.selectedTab.value == title;
    return Expanded(
      child: GestureDetector(
        onTap: () => controller.changeTab(title),
        child: Container(
          height: 56.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF00BCD4) : Colors.white,
            borderRadius: isSelected
                ? BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  )
                : BorderRadius.only(
                    topLeft: index == 0 ? Radius.circular(12.r) : Radius.zero,
                    topRight: index == 2 ? Radius.circular(12.r) : Radius.zero,
                  ),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xFFBDBDBD),
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
