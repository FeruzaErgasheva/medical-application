import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

// ignore: must_be_immutable
class AppBarCommon extends StatelessWidget {
  String headlinetext;
  AppBarCommon({super.key,required this.headlinetext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(100.r),
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.primaryColor,
          ),
        ),
        Text(
          headlinetext,
          style: AppTextStyles.headlineBlue600Text,
        ),
      ],
    );
  }
}
