import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/doctors_model.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/bg_white_icon.dart';
import 'package:medical_application/utils/widgets/icon_secondary_doctorsinfo.dart';
import 'package:medical_application/utils/widgets/rating_icon.dart';

class RatedDoctorsCard extends StatelessWidget {
  Function()? onTap;
  int index;
  RatedDoctorsCard({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.circular(17.r)),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            clipBehavior: Clip.hardEdge,
            width: 70.w,
            height: 70.h,
            child: Image.asset(
              doctors[index].image,
              fit: BoxFit.cover,
            ),
          ),
          5.width(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //icon and text
                  Row(
                    children: [
                      DoctorsInfoIconSecondaryColor(
                        icon: Icons.verified_outlined,
                        isTapped: true,
                      ),
                      5.width(),
                      Text(
                        "Professional Doctor",
                        style: AppTextStyles.registerLoginRegularBlue500Text,
                      )
                    ],
                  ),
                  15.width(),
                  SizedBox(
                      width: 45.w,
                      child: RatingIcon(
                          text: doctors[index].rating, icon: Icons.star))
                ],
              ),
              5.height(),
              Container(
                padding: EdgeInsets.only(
                    top: 9.h, bottom: 9.h, left: 14.w, right: 71.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctors[index].name,
                      style: AppTextStyles.registerLoginRegularBlue500Text,
                    ),
                    Text(
                      doctors[index].area,
                      style: AppTextStyles.registerLoginRegularBlackText,
                    )
                  ],
                ),
              ),
              6.height(),
              Row(
                children: [
                  InkWell(
                    onTap: onTap,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      child: Text(
                        "Info",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "League Spartan",
                          fontSize: 15.sp,
                          height: 0.8.h,
                        ),
                      ),
                    ),
                  ),
                  45.width(),
                  Row(
                    children: [
                      BgWhiteIcon(icon: Icons.info_outline),
                      2.width(),
                      BgWhiteIcon(icon: Icons.question_mark),
                      2.width(),
                      BgWhiteIcon(icon: Icons.star_border),
                      2.width(),
                      BgWhiteIcon(icon: Icons.favorite_border)
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
