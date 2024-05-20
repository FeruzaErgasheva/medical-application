import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/doctors_model.dart';
import 'package:medical_application/utils/models/styles.dart';

class DocstorsMainCard extends StatelessWidget {
  Function()? onTapped;
  int index;
  DocstorsMainCard({super.key, required this.index, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        margin: EdgeInsets.only(bottom: 8.h),
        decoration: BoxDecoration(
            color: AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(17.r)),
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                doctors[index].image,
                width: 57.w,
                height: 57.h,
                fit: BoxFit.cover,
              ),
            ),
            10.width(),
            Column(
              children: [
                Container(
                  width: 200.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13.r)),
                  padding: EdgeInsets.only(
                    left: 14.w,
                    top: 9.h,
                    bottom: 4.h,
                  ),
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
                5.height(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.only(
                              top: 5.h, left: 5.w, bottom: 3.h, right: 25.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 16.w,
                                color: AppColor.primaryColor,
                              ),
                              5.width(),
                              Text(
                                doctors[index].rating,
                                style: AppTextStyles.regularBlue300Text,
                              )
                            ],
                          ),
                        ),
                        6.width(),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.only(
                              top: 5.h, left: 5.w, bottom: 3.h, right: 10.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                CupertinoIcons.chat_bubble_text,
                                size: 16.w,
                                color: AppColor.primaryColor,
                              ),
                              5.width(),
                              Text(
                                doctors[index].messages,
                                style: AppTextStyles.regularBlue300Text,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    10.width(),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.w),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            Icons.question_mark,
                            color: AppColor.primaryColor,
                            size: 16.w,
                          ),
                        ),
                        5.width(),
                        Container(
                          padding: EdgeInsets.all(5.w),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            Icons.favorite,
                            color: AppColor.primaryColor,
                            size: 16.w,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
