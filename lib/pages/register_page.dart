import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/login_page.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/models/users_model.dart';
import 'package:medical_application/utils/widgets/logo_card.dart';
import 'package:medical_application/utils/widgets/text_btn.dart';
import 'package:medical_application/utils/widgets/textfield_widget.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColor.primaryColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          "New Account",
          style: TextStyle(
              color: AppColor.primaryColor,
              fontFamily: "League Spartan",
              fontWeight: FontWeight.w600,
              fontSize: 24.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              34.height(),
              Text(
                "Full Name",
                style: AppTextStyles.headline,
              ),
              12.height(),
              MyTextFieldBluHint(
                  controller: nameController,
                  text: "Ergasheva Feruzabonu",
                  suffixBool: false),
              18.height(),
              Text(
                "Password",
                style: AppTextStyles.headline,
              ),
              12.height(),
              MyTextFieldBluHint(
                  controller: passwordController,
                  text: "********",
                  suffixBool: true),
              18.height(),
              Text(
                "Email",
                style: AppTextStyles.headline,
              ),
              12.height(),
              MyTextFieldBluHint(
                  controller: emailController,
                  text: "example@example.com",
                  suffixBool: false),
              18.height(),
              Text(
                "Mobile Number",
                style: AppTextStyles.headline,
              ),
              12.height(),
              MyTextFieldBluHint(
                  controller: TextEditingController(),
                  text: "+9980330707",
                  suffixBool: false),
              18.height(),
              Text(
                "Date Of Birth",
                style: AppTextStyles.headline,
              ),
              12.height(),
              MyTextFieldBluHint(
                  controller: TextEditingController(),
                  text: "DD/MM/YYYY",
                  suffixBool: false),
              20.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "By continuing, you agree to",
                          style: AppTextStyles.registerLoginRegularBlackText,
                          children: [
                            TextSpan(
                                text: "\nTerms of Use",
                                style: AppTextStyles
                                    .registerLoginRegularBlue500Text),
                            TextSpan(
                                text: " and",
                                style: AppTextStyles
                                    .registerLoginRegularBlackText),
                            TextSpan(
                                text: " Privacy Policy",
                                style: AppTextStyles
                                    .registerLoginRegularBlue500Text)
                          ],
                        ),
                      ),
                      4.height(),
                      TextBtn(
                        text: "Sign Up",
                        btnTapped: () {
                          setState(
                            () {
                              if (User.emails.contains(emailController.text)) {
                                final snackEmailErrorBar = SnackBar(
                                    backgroundColor: AppColor.primaryColor,
                                    content: Text(
                                      " This email already exists, ${nameController.text}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "League Spartan",
                                          fontSize: 16.sp),
                                    ));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackEmailErrorBar);
                              } else if ((emailController.text.isNotEmpty &&
                                      emailController.text.contains("@") &&
                                      emailController.text.length > 8) &&
                                  (passwordController.text.isNotEmpty &&
                                      passwordController.text.length >= 8) &&
                                  !User.emails.contains(emailController.text)) {
                                User.users.add(User(
                                    email: emailController.text,
                                    password: passwordController.text));
                                User.emails.add(emailController.text);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LogInPage(),
                                    ));
                                final snackbar = SnackBar(
                                    action: SnackBarAction(
                                        label: "Thanks",
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        }),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: AppColor.primaryColor,
                                    content: Text(
                                      " You registered succesfully,\nemail${emailController}\npassword:$passwordController\nusers:${User.users.length}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "League Spartan",
                                          fontSize: 16.sp),
                                    ));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackbar);
                              } else {
                                final snackbar = SnackBar(
                                    backgroundColor: AppColor.primaryColor,
                                    content: Text(
                                      " There is error in your information, ${nameController.text}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "League Spartan",
                                          fontSize: 16.sp),
                                    ));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackbar);
                              }
                              nameController.clear();
                              emailController.clear();
                              passwordController.clear();
                            },
                          );
                        },
                      ),
                      16.height(),
                      Text(
                        "or sign up with",
                        style: AppTextStyles.registerLoginRegularBlackText,
                      ),
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
                          text: "already have an account?",
                          style: AppTextStyles.registerLoginRegularBlackText,
                          children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LogInPage(),
                                      ),
                                    );
                                  },
                                text: " Log in",
                                style: AppTextStyles
                                    .registerLoginRegularBlue500Text)
                          ],
                        ),
                      ),
                      20.height()
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
