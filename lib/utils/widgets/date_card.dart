import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateCard extends StatelessWidget {
  String date;
  String weekday;
  Color cardColor;
  Color textColor;

  DateCard(
      {super.key,
      required this.date,
      required this.weekday,
      required this.cardColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w, bottom: 9.h),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(18.r)),
      padding: EdgeInsets.only(top: 17.h, bottom: 12.h, left: 9.w, right: 10.w),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: date,
            style: TextStyle(
                color: textColor,
                fontFamily: "League Spartan",
                fontWeight: FontWeight.w500,
                fontSize: 24.sp),
            children: [
              TextSpan(
                  text: "\n$weekday",
                  style: TextStyle(
                      color: textColor,
                      fontFamily: "League Spartan",
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp)),
            ]),
      ),
    );
  }
}
