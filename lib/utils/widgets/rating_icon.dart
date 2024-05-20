import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';

class RatingIcon extends StatelessWidget {
  String text;
  IconData icon;
  RatingIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.only(top: 5.h, left: 3.w, bottom: 3.h, right: 3.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 16.w,
            color: AppColor.primaryColor,
          ),
          5.width(),
          Text(
            text,
            style: AppTextStyles.regularBlue300Text,
          )
        ],
      ),
    );
  }
}
