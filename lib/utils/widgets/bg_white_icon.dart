import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

class BgWhiteIcon extends StatelessWidget {
  IconData icon;
  BgWhiteIcon({super.key,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(
        icon,
        color: AppColor.primaryColor,
        size: 16.w,
      ),
    );
  }
}
