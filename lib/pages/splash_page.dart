import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_application/pages/welcome_page.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/extensions/extensions.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        color: AppColor.primaryColor,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 130.w,
                    height: 130.h,
                  ),
                  19.height(),
                  Text(
                    "Skin\nFirts",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 0.9,
                        fontFamily: "League Spartan",
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 48.sp),
                  ),
                  17.height(),
                  Text(
                    "Dermatology Center",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: "League Spartan",
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 100.h,
              child: Lottie.asset("assets/animations/loading_white.json",
                  height: 80.h),
            )
          ],
        ),
      ),
    );
  }
}
