import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/values/app_strings.dart';

class SplashLogoSection extends StatelessWidget {
  const SplashLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 120.w,
          height: 120.w,
          child: Image.asset(
            AppAssets.splash,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 30.h),
        Text(
          AppStrings.appTitle,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 0,
            height: 1.0,
          ),
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Text(
            AppStrings.appSubtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 0,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
