import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/controller_page.dart';
import 'package:medical_application/pages/register_page.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/models/users_model.dart';
import 'package:medical_application/utils/widgets/logo_card.dart';
import 'package:medical_application/utils/widgets/text_btn.dart';
import 'package:medical_application/utils/widgets/textfield_widget.dart';

class LogInPage extends StatefulWidget {
  LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.primaryColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Log In",
          style: TextStyle(
              color: AppColor.primaryColor,
              fontFamily: "League Spartan",
              fontWeight: FontWeight.w600,
              fontSize: 24.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              34.height(),
              Text(
                "Welcome",
                style: TextStyle(
                  height: 0.8.h,
                  color: AppColor.primaryColor,
                  fontFamily: "League Spartan",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              12.height(),
              Text(
                "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna.",
                style: AppTextStyles.registerLoginRegularBlackText,
              ),
              47.height(),
              Text(
                "Email or Mobile Number",
                style: AppTextStyles.headline,
              ),
              12.height(),
              MyTextFieldBluHint(
                controller: _emailController,
                text: "example@example.com",
                suffixBool: false,
              ),
              20.height(),
              Text(
                "Password",
                style: AppTextStyles.headline,
              ),
              12.height(),
              MyTextFieldBluHint(
                controller: _passwordController,
                text: "********",
                suffixBool: true,
              ),
              9.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: AppTextStyles.registerLoginRegularBlue500Text,
                  ),
                ],
              ),
              37.height(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 38.w),
                child: Column(
                  children: [
                    TextBtn(
                        text: "Log In",
                        btnTapped: () {
                          setState(() {
                            if (!User.emails.contains(_emailController.text)) {
                              final snack = SnackBar(
                                  backgroundColor: AppColor.primaryColor,
                                  content: Text(
                                    "User with this email doesn't exist",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "League Spartan"),
                                  ));
                              ScaffoldMessenger.of(context).showSnackBar(snack);
                            } else if (User.isUserExists(_emailController.text,
                                _passwordController.text)) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ControllerPage(),
                                  ));
                              final snack = const SnackBar(
                                  backgroundColor: AppColor.primaryColor,
                                  content: Text(
                                    "Success",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "League Spartan"),
                                  ));
                              ScaffoldMessenger.of(context).showSnackBar(snack);
                            } else if (User.emails
                                    .contains(_emailController.text) &&
                                !User.isUserExists(_emailController.text,
                                    _passwordController.text)) {
                              final snack = SnackBar(
                                  backgroundColor: AppColor.primaryColor,
                                  content: Text(
                                    "Password is wrong",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "League Spartan"),
                                  ));
                              ScaffoldMessenger.of(context).showSnackBar(snack);
                            }
                          });
                        }),
                    16.height(),
                    Text("or sign up with",
                        style: AppTextStyles.registerLoginRegularBlackText),
                    12.height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LogoCard(logoPath: "assets/images/google.png"),
                        LogoCard(logoPath: "assets/images/facebook.png"),
                        LogoCard(logoPath: "assets/images/fingerprint.png")
                      ],
                    ),
                    38.height(),
                    RichText(
                      text: TextSpan(
                        text: "Don't have an account?",
                        style: AppTextStyles.registerLoginRegularBlackText,
                        children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage(),
                                    ),
                                  );
                                },
                              text: " Sign Up",
                              style:
                                  AppTextStyles.registerLoginRegularBlue500Text)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
