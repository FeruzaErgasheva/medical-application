import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

class LogoCard extends StatelessWidget {
  String logoPath;
  LogoCard({super.key, required this.logoPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 4.5.w, right: 4.5.w),
        padding: EdgeInsets.all(11),
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: AppColor.secondaryColor),
        child: Image.asset(
          logoPath,
          width: 18.w,
          height: 18.w,
        ),
      ),
    );
  }
}
