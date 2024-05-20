// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

class TextBtn extends StatelessWidget {
  String text;
  Function()? btnTapped;
  TextBtn({super.key, required this.text, required this.btnTapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: btnTapped,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 80.w),
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: "League Spartan",
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              height: 0.8.h),
        ),
      ),
    );
  }
}

class SignUpBtn extends StatelessWidget {
  Function()? btnTapped;
  SignUpBtn({super.key, required this.btnTapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: btnTapped,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 70.w),
        decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Sign Up",
          style: TextStyle(
              fontFamily: "League Spartan",
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              height: 0.8.h),
        ),
      ),
    );
  }
}
