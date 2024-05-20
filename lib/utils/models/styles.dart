import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppColor {
  static const primaryColor = Color.fromARGB(255, 17, 80, 216);
  static const secondaryColor = Color.fromARGB(255, 211, 221, 252);
  static const thirdColor = Color.fromARGB(255, 122, 144, 218);
}

abstract class AppTextStyles extends TextStyle {
  static TextStyle headline = TextStyle(
      fontSize: 20.sp,
      fontFamily: "League Spartan",
      fontWeight: FontWeight.w500,
      height: 0.9.h);

  static TextStyle registerLoginRegularBlue500Text = TextStyle(
      color: AppColor.primaryColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      fontFamily: "League Spartan",
      height: 0.9.h);
  static TextStyle mediumBlue500Text15 = TextStyle(
      color: AppColor.primaryColor,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      fontFamily: "League Spartan",
      height: 0.9.h);
  static TextStyle registerLoginRegularBlackText = TextStyle(
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontFamily: "League Spartan",
      height: 0.8.h);
  static TextStyle regularBlue300Text = TextStyle(
      color: AppColor.primaryColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w300,
      fontFamily: "League Spartan",
      height: 0.8.h);
  static TextStyle headlineBlue600Text = TextStyle(
      color: AppColor.primaryColor,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "League Spartan",
      height: 0.8.h);
  static TextStyle regularBlack20 = TextStyle(
      color: Colors.black,
      fontSize: 20.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "League Spartan",
      height: 0.8.h);
  static TextStyle regularWhite20 = TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "League Spartan",
      height: 0.8.h);
}
