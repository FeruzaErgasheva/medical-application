import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/contactus_widget.dart';
import 'package:medical_application/utils/widgets/faq_widget.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  bool isFaq = true;
  bool isContactus = false;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 180.h,
            color: AppColor.primaryColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  60.height(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      64.width(),
                      Text(
                        "Help Center",
                        style: TextStyle(
                            fontFamily: "League Spartan",
                            color: Colors.white,
                            fontSize: 24.sp,
                            height: 0.8.h,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  22.height(),
                  Text(
                    "How can we help you?",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "League Spartan",
                        fontSize: 16.sp,
                        height: 0.8.h,
                        fontWeight: FontWeight.w400),
                  ),
                  15.height(),
                  SizedBox(
                    height: 38.h,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppColor.primaryColor,
                        ),
                        hintText: "Search...",
                        hintStyle: const TextStyle(
                            color: AppColor.secondaryColor,
                            fontFamily: "League Spartan",
                            fontWeight: FontWeight.w600),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          14.height(),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _controller.animateToPage(0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 40.w),
                        decoration: BoxDecoration(
                            color: isFaq
                                ? AppColor.primaryColor
                                : AppColor.secondaryColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          "FAQ",
                          style: isFaq
                              ? AppTextStyles.regularWhite20
                              : AppTextStyles.mediumBlue500Text15,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _controller.animateToPage(1,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 40.w),
                        decoration: BoxDecoration(
                            color: isContactus
                                ? AppColor.primaryColor
                                : AppColor.secondaryColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          "Contact Us",
                          style: isContactus
                              ? AppTextStyles.regularWhite20
                              : AppTextStyles.mediumBlue500Text15,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          28.height(),
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  isFaq = index == 0;
                  isContactus = index == 1;
                });
              },
              children: [
                const FAQ(),
                const ContactUs(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
