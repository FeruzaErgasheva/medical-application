// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

class MyTextFieldBluHint extends StatefulWidget {
  bool suffixBool;
  String text;
  TextEditingController controller;
  MyTextFieldBluHint(
      {super.key,
      required this.text,
      required this.suffixBool,
      required this.controller});

  @override
  State<MyTextFieldBluHint> createState() => _MyTextFieldBluHintState();
}

class _MyTextFieldBluHintState extends State<MyTextFieldBluHint> {
  bool passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: passwordVisibility,
      style: TextStyle(
          color: AppColor.thirdColor,
          fontSize: 18.sp,
          height: 0.8.h,
          fontFamily: "League Spartan"),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 13.w),
        suffixIcon: widget.suffixBool
            ? (passwordVisibility
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: Icon(
                      Icons.visibility_off_outlined,
                      size: 24.sp,
                      color: Colors.black,
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: const Icon(
                      Icons.visibility_outlined,
                      color: Colors.black,
                    ),
                  ))
            : const SizedBox(),
        hintText: widget.text,
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
    );
  }
}

class TextFieldBlackHint extends StatefulWidget {
  bool suffixBool;
  String text;
  TextEditingController controller;
  TextFieldBlackHint(
      {super.key,
      required this.text,
      required this.suffixBool,
      required this.controller});

  @override
  State<TextFieldBlackHint> createState() => _TextFieldBlackHint();
}

class _TextFieldBlackHint extends State<TextFieldBlackHint> {
  bool passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: passwordVisibility,
      style: TextStyle(
          color: AppColor.thirdColor,
          fontSize: 18.sp,
          height: 0.8.h,
          fontFamily: "League Spartan"),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 13.w),
        suffixIcon: widget.suffixBool
            ? (passwordVisibility
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: Icon(
                      Icons.visibility_off_outlined,
                      size: 24.sp,
                      color: Colors.black,
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: const Icon(
                      Icons.visibility_outlined,
                      color: Colors.black,
                    ),
                  ))
            : const SizedBox(),
        hintText: widget.text,
        hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
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
    );
  }
}




