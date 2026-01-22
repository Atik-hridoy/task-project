import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataViewCard extends StatelessWidget {
  final String iconPath;
  final Color iconColor;
  final String title;
  final String status;
  final String data1;
  final String data2;
  final bool isInactive;

  const DataViewCard({
    super.key,
    required this.iconPath,
    required this.iconColor,
    required this.title,
    required this.status,
    required this.data1,
    required this.data2,
    this.isInactive = false,
  });

  Color get _statusColor {
    if (status == 'Active') return const Color(0xFF00A8E8);
    if (status == 'Inactive') return const Color(0xFFFF4444);
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isInactive
                ? [
                    Colors.grey.shade300,
                    Colors.grey.shade400,
                  ]
                : [
                    Colors.white,
                    Colors.blue.shade50,
                  ],
          ),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Icon Container
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.all(6.w),
              child: Image.asset(
                iconPath,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 12.w),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Status
                  Row(
                    children: [
                      Container(
                        width: 10.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: iconColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '($status)',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: _statusColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  // Data 1
                  Row(
                    children: [
                      SizedBox(
                        width: 60.w,
                        child: Text(
                          'Data 1',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        ': ',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        data1,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  // Data 2
                  Row(
                    children: [
                      SizedBox(
                        width: 60.w,
                        child: Text(
                          'Data 2',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        ': ',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        data2,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Arrow Icon
            Icon(
              Icons.chevron_right,
              color: Colors.grey.shade600,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
