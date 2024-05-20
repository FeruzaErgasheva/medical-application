import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

class DoctorsInfoIconSecondaryColor extends StatefulWidget {
  IconData icon;
  bool isTapped;

  DoctorsInfoIconSecondaryColor(
      {super.key, required this.icon, this.isTapped = false});

  @override
  State<DoctorsInfoIconSecondaryColor> createState() =>
      _DoctorsInfoIconSecondaryColorState();
}

class _DoctorsInfoIconSecondaryColorState
    extends State<DoctorsInfoIconSecondaryColor> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        margin: EdgeInsets.only(right: 3.w),
        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.isTapped
                ? AppColor.primaryColor
                : AppColor.secondaryColor),
        child: Icon(
          size: 16.h,
          widget.icon,
          color: widget.isTapped ? Colors.white : AppColor.primaryColor,
        ),
      ),
    );
  }
}
