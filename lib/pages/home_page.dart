import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/doctor_info_page.dart';
import 'package:medical_application/pages/doctors_page.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/doctors_model.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/date_card.dart';
import 'package:medical_application/utils/widgets/doctors_card_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 13.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                "assets/images/avatar1.png",
                                width: 41.w,
                                height: 41.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            10.width(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, Welcome Back",
                                  style: AppTextStyles
                                      .registerLoginRegularBlue500Text,
                                ),
                                Text(
                                  "John Doe",
                                  style: TextStyle(
                                      fontFamily: "League Spartan",
                                      fontSize: 14.sp,
                                      height: 0.8.h),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(6.w),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.secondaryColor),
                              child: Icon(
                                Icons.notifications_none,
                                size: 17.w,
                              ),
                            ),
                            4.width(),
                            Container(
                              padding: EdgeInsets.all(6.w),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.secondaryColor),
                              child: Icon(
                                Icons.settings_outlined,
                                size: 17.w,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    22.height(),
                    Row(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DoctorsScrollPage(
                                    isInSorted: true,
                                    isInRating: false,
                                  ),
                                ));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/doctors_icon.png",
                                width: 18.w,
                                height: 18.h,
                                fit: BoxFit.cover,
                              ),
                              4.height(),
                              Text(
                                "Doctors",
                                style: AppTextStyles
                                    .registerLoginRegularBlue500Text,
                              )
                            ],
                          ),
                        ),
                        9.width(),
                        InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DoctorsScrollPage(
                                    isInSorted: false,
                                    isInRating: true,
                                  ),
                                ));
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                size: 18.h,
                                color: AppColor.primaryColor,
                              ),
                              4.height(),
                              Text(
                                "Favorite",
                                style: AppTextStyles
                                    .registerLoginRegularBlue500Text,
                              )
                            ],
                          ),
                        ),
                        29.width(),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                                color: AppColor.thirdColor,
                                fontSize: 18.sp,
                                height: 0.8.h,
                                fontFamily: "League Spartan"),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                size: 20.h,
                                Icons.search,
                                color: AppColor.primaryColor,
                              ),
                              prefixIcon: Container(
                                margin: EdgeInsets.only(
                                    left: 5.w, top: 5.h, bottom: 5.h),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 9, horizontal: 6),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100.r)),
                                child: Image.asset(
                                    "assets/images/seetings_icon.png"),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 13.w),
                              hintText: "",
                              hintStyle: TextStyle(
                                  color: AppColor.thirdColor,
                                  fontSize: 18.sp,
                                  height: 0.8.h,
                                  fontFamily: "League Spartan"),
                              fillColor: AppColor.secondaryColor,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  borderSide: BorderSide.none),
                            ),
                            textAlignVertical: TextAlignVertical.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              13.height(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 30.w),
                color: AppColor.secondaryColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        DateCard(
                          date: "9",
                          weekday: "Mon",
                          cardColor: Colors.white,
                          textColor: Colors.black,
                        ),
                        DateCard(
                          date: "10",
                          weekday: "Tue",
                          cardColor: Colors.white,
                          textColor: Colors.black,
                        ),
                        DateCard(
                          date: "11",
                          weekday: "Wed",
                          cardColor: AppColor.primaryColor,
                          textColor: Colors.white,
                        ),
                        DateCard(
                          date: "12",
                          weekday: "Thu",
                          cardColor: Colors.white,
                          textColor: Colors.black,
                        ),
                        DateCard(
                          date: "13",
                          weekday: "Fri",
                          cardColor: AppColor.primaryColor,
                          textColor: Colors.white,
                        ),
                        DateCard(
                          date: "14",
                          weekday: "Sat",
                          cardColor: AppColor.primaryColor,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r)),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "11 Wednesday - Today",
                                style: TextStyle(
                                    fontFamily: "League Spartan",
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.primaryColor,
                                    fontSize: 12.sp,
                                    height: 0.9.h),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "9 AM ------------------------------------------------",
                                style: AppTextStyles.regularBlue300Text,
                              )
                            ],
                          ),
                          10.height(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  10.height(),
                                  Text(
                                    "10 AM",
                                    style: AppTextStyles.regularBlue300Text,
                                  ),
                                  15.height(),
                                  Text(
                                    "11 AM",
                                    style: AppTextStyles.regularBlue300Text,
                                  )
                                ],
                              ),
                              15.width(),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 20.w,
                                      right: 14.w,
                                      top: 9.h,
                                      bottom: 9.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.secondaryColor,
                                    borderRadius: BorderRadius.circular(13.r),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Dr, OLivia Turner, M.D.",
                                            style: AppTextStyles
                                                .registerLoginRegularBlue500Text,
                                          ),
                                          // 28.width(),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(4.w),
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                                child: Icon(
                                                  Icons.done,
                                                  color: AppColor.primaryColor,
                                                  size: 10.w,
                                                ),
                                              ),
                                              4.width(),
                                              Container(
                                                padding: EdgeInsets.all(4.w),
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                                child: Icon(
                                                  Icons.close_rounded,
                                                  color: AppColor.primaryColor,
                                                  size: 10.w,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Text(
                                        "Treatment and prevention of\nskin and photodermatitis.",
                                        style: AppTextStyles
                                            .registerLoginRegularBlackText,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "12 AM -----------------------------------------------",
                                style: AppTextStyles.regularBlue300Text,
                              )
                            ],
                          ),
                          const Row(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              15.height(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (var i = 0; i < doctors.length; i++)
                        DocstorsMainCard(
                          index: i,
                          onTapped: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctorInfoPage(
                                    name: doctors[i].name,
                                    area: doctors[i].area,
                                    image: doctors[i].image,
                                    rating: doctors[i].rating,
                                    messages: doctors[i].messages,
                                    experience: doctors[i].experience,
                                    focus: doctors[i].focus),
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                ),
              )
              //next
            ],
          ),
        ),
      ),
    );
  }
}
