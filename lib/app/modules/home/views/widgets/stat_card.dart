import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatCard extends StatelessWidget {
  final String iconPath;
  final String value;
  final String label;

  const StatCard({
    super.key,
    required this.iconPath,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset(
                iconPath,
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 6.w),
              Expanded(
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 10.sp,
              color: Colors.grey[600],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
