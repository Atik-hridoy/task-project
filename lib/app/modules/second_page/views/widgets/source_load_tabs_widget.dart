import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/second_page_controller.dart';

class SourceLoadTabsWidget extends GetView<SecondPageController> {
  const SourceLoadTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Container(
            padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E0E0),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Row(
              children: [
                _buildTab('Source'),
                _buildTab('Load'),
              ],
            ),
          ),
        ),
        Container(
          height: 2,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          color: const Color(0xFFE0E0E0),
        ),
      ],
    ));
  }

  Widget _buildTab(String title) {
    final isSelected = controller.selectedSourceTab.value == title;
    return Expanded(
      child: GestureDetector(
        onTap: () => controller.changeSourceTab(title),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF00BCD4) : Colors.transparent,
            borderRadius: BorderRadius.circular(22.r),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xFF9E9E9E),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
