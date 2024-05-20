import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/bg_white_icon.dart';
import 'package:medical_application/utils/widgets/icon_secondary_doctorsinfo.dart';
import 'package:medical_application/utils/widgets/rating_icon.dart';

class DoctorInfoPage extends StatelessWidget {
  String name;
  String area;
  String image;
  String rating;
  String messages;
  String experience;
  String focus;
  DoctorInfoPage(
      {super.key,
      required this.name,
      required this.area,
      required this.image,
      required this.rating,
      required this.messages,
      required this.experience,
      required this.focus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                35.height(),
                Row(
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
                      "Doctor Info",
                      style: AppTextStyles.headlineBlue600Text,
                    ),
                    Row(
                      children: [
                        DoctorsInfoIconSecondaryColor(
                          icon: Icons.search,
                        )
                      ],
                    )
                  ],
                ),
                21.height(),
                Row(
                  children: [
                    Text(
                      "Sort By ",
                      style: AppTextStyles.registerLoginRegularBlackText,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 3.w),
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(13.r)),
                      child: Text(
                        "A -> Z",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontFamily: "League Spartan",
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          height: 0.9.h,
                        ),
                      ),
                    ),
                    DoctorsInfoIconSecondaryColor(
                      icon: Icons.star,
                    ),
                    DoctorsInfoIconSecondaryColor(
                      icon: Icons.favorite_border,
                    ),
                    DoctorsInfoIconSecondaryColor(
                      icon: Icons.female,
                    ),
                    DoctorsInfoIconSecondaryColor(
                      icon: Icons.male,
                    )
                  ],
                ),
                14.height(),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.secondaryColor,
                      borderRadius: BorderRadius.circular(17.r)),
                  padding:
                      EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              image,
                              width: 140.w,
                              height: 140.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          6.width(),
                          Column(
                            children: [
                              Container(
                                width: 130.w,
                                decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(18.r)),
                                padding: EdgeInsets.only(
                                  top: 4.h,
                                  bottom: 4.h,
                                  left: 4.w,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    DoctorsInfoIconSecondaryColor(
                                        icon: Icons.verified_outlined),
                                    7.width(),
                                    RichText(
                                      text: TextSpan(
                                          text: "$experience years",
                                          style: TextStyle(
                                              fontFamily: "League Spartan",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              height: 0.9.h),
                                          children: [
                                            TextSpan(
                                              text: "\nexperience",
                                              style: TextStyle(
                                                  fontFamily: "League Spartan",
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12.sp,
                                                  height: 0.9.h),
                                            )
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              10.height(),
                              Container(
                                width: 130.w,
                                decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(18.r)),
                                padding: EdgeInsets.only(
                                    top: 4.h,
                                    bottom: 4.h,
                                    left: 10.w,
                                    right: 8.w),
                                child: RichText(
                                  text: TextSpan(
                                      text: "Focus",
                                      style: TextStyle(
                                          fontFamily: "League Spartan",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          height: 0.9.h),
                                      children: [
                                        TextSpan(
                                          text: focus,
                                          style: TextStyle(
                                              fontFamily: "League Spartan",
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12.sp,
                                              height: 0.9.h),
                                        )
                                      ]),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.r)),
                        padding: EdgeInsets.symmetric(
                            vertical: 7.h, horizontal: 22.w),
                        child: Column(
                          children: [
                            Text(
                              name,
                              style: AppTextStyles.mediumBlue500Text15,
                            ),
                            Text(
                              area,
                              style:
                                  AppTextStyles.registerLoginRegularBlackText,
                            )
                          ],
                        ),
                      ),
                      12.height(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingIcon(
                            text: rating,
                            icon: Icons.star,
                          ),
                          2.width(),
                          RatingIcon(
                              text: messages,
                              icon: CupertinoIcons.chat_bubble_text),
                          7.width(),
                          RatingIcon(
                              text: "Mon-Sat / 9:00AM - 5:00PM",
                              icon: Icons.watch_later_outlined)
                        ],
                      ),
                      7.height(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.w, vertical: 6.h),
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(13.r)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 12.h,
                                  color: Colors.white,
                                ),
                                7.width(),
                                Text(
                                  "Schedule",
                                  style: TextStyle(
                                      fontFamily: "League Spartan",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.sp,
                                      height: 0.9.h),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              BgWhiteIcon(icon: Icons.info_outline),
                              5.width(),
                              BgWhiteIcon(icon: Icons.question_mark),
                              5.width(),
                              BgWhiteIcon(icon: Icons.star_border),
                              5.width(),
                              BgWhiteIcon(icon: Icons.favorite_border)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                34.height(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile",
                      style: AppTextStyles.mediumBlue500Text15,
                    ),
                    2.height(),
                    Text(
                      "Officia occaecat magna minim pariatur ea quis ex in esse incididunt ad. Duis eiusmod cillum dolor exercitation mollit quis duis sit. Exercitation occaecat cillum laboris aliquip eiusmod excepteur veniam mollit.",
                      style: AppTextStyles.registerLoginRegularBlackText,
                    ),
                  ],
                ),
                23.height(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Career Path",
                      style: AppTextStyles.mediumBlue500Text15,
                    ),
                    2.height(),
                    Text(
                      "Officia occaecat magna minim pariatur ea quis ex in esse incididunt ad. Duis eiusmod cillum dolor exercitation mollit quis duis sit. Exercitation occaecat cillum laboris aliquip eiusmod excepteur veniam mollit.",
                      style: AppTextStyles.registerLoginRegularBlackText,
                    ),
                  ],
                ),
                23.height(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile",
                      style: AppTextStyles.mediumBlue500Text15,
                    ),
                    2.height(),
                    Text(
                      "Officia occaecat magna minim pariatur ea quis ex in esse incididunt ad. Duis eiusmod cillum dolor exercitation mollit quis duis sit. Exercitation occaecat cillum laboris aliquip eiusmod excepteur veniam mollit.",
                      style: AppTextStyles.registerLoginRegularBlackText,
                    ),
                  ],
                ),
                20.height()
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
