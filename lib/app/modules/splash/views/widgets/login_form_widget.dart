import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../routes/app_routes.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF6B7280),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              TextField(
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6B7280),
                ),
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFD1D5DB),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF9FAFB),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: const BorderSide(
                      color: Color(0xFFD1D5DB),
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: const BorderSide(
                      color: Color(0xFFD1D5DB),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: const BorderSide(
                      color: Color(0xFF0EA5E9),
                      width: 2,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              TextField(
                obscureText: true,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6B7280),
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFD1D5DB),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF9FAFB),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: const BorderSide(
                      color: Color(0xFFD1D5DB),
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: const BorderSide(
                      color: Color(0xFFD1D5DB),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: const BorderSide(
                      color: Color(0xFF0EA5E9),
                      width: 2,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                  suffixIcon: const Icon(
                    Icons.visibility_outlined,
                    color: Color(0xFFD1D5DB),
                    size: 22,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget password?',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFFD1D5DB),
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xFFD1D5DB),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offNamed(AppRoutes.home),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0EA5E9),
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have any account? ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xFFD1D5DB),
                    ),
                    children: [
                      TextSpan(
                        text: 'Register Now',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFF0EA5E9),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
