import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/bg_white_icon.dart';

class DoctorsPageCard extends StatelessWidget {
  String image;
  String name;
  String area;
  Function()? onTap;
  DoctorsPageCard(
      {super.key,
      required this.onTap,
      required this.image,
      required this.name,
      required this.area});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 11.w),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(17.r),
      ),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          9.width(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTextStyles.mediumBlue500Text15,
              ),
              5.height(),
              Text(
                area,
                style: AppTextStyles.registerLoginRegularBlackText,
              ),
              14.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  10.width(),
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
