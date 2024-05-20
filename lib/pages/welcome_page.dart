import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/login_page.dart';
import 'package:medical_application/pages/register_page.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/widgets/text_btn.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 52.w, right: 41.w),
        width: 1.sw,
        height: 1.sh,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/blue_logo.png",
                  width: 130.w,
                  height: 130.h,
                ),
                14.height(),
                Text(
                  "Skin\nFirts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 0.9,
                      fontFamily: "League Spartan",
                      fontWeight: FontWeight.w100,
                      color: AppColor.primaryColor,
                      fontSize: 48.sp),
                ),
                17.height(),
                Text("Dermatology Center",
                    style: AppTextStyles.registerLoginRegularBlue500Text),
                82.height(),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.registerLoginRegularBlackText),
                16.height(),
                TextBtn(
                  text: "Login",
                  btnTapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInPage(),
                      ),
                    );
                  },
                ),
                7.height(),
                SignUpBtn(btnTapped: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
