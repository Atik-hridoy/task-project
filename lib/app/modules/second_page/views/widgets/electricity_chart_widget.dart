import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElectricityChartWidget extends StatelessWidget {
  const ElectricityChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
      child: Column(
        children: [
          Text(
            'Electricity',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFBDBDBD),
            ),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            width: 220.w,
            height: 220.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 220.w,
                  height: 220.h,
                  child: CircularProgressIndicator(
                    value: 0.75,
                    strokeWidth: 35,
                    backgroundColor: const Color(0xFFB3E5FC),
                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF00BCD4)),
                    strokeCap: StrokeCap.round,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total Power',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xFF757575),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '5.53 kw',
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF212121),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
