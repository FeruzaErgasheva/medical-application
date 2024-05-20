import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/favourite.dart';
import 'package:medical_application/pages/login_page.dart';
import 'package:medical_application/pages/payment/payment_method.dart';
import 'package:medical_application/pages/payment_page.dart';
import 'package:medical_application/pages/privacy_policy.dart';
import 'package:medical_application/pages/profile/help/help_page.dart';
import 'package:medical_application/pages/profile/profile_edit.dart';
import 'package:medical_application/pages/profile/settings/settings_main.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/appbar_common.dart';
import 'package:medical_application/utils/widgets/icon_secondary_doctorsinfo.dart';
import 'package:medical_application/utils/widgets/profil_tile.dart';

class ProfilePage extends StatelessWidget {
  List<IconData> icons = [
    CupertinoIcons.person,
    Icons.favorite_border,
    CupertinoIcons.creditcard,
    Icons.lock_open_outlined,
    Icons.settings_outlined,
    Icons.question_mark,
    Icons.logout_outlined
  ];
  List<String> tileTitles = [
    "Profile",
    "Favorite,",
    "Payment Method",
    "Privacy Policy",
    "Settings",
    "Help",
    "Logout"
  ];

  List<Widget> pages = [
    ProfileEdit(),
    FavoruitePage(),
    PaymentMethodPage(),
    PrivacyPolicy(),
    SettingsMainPage(),
    HelpPage(),
    LogInPage()
  ];
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35.h, left: 30.w, right: 117.w),
                child: AppBarCommon(headlinetext: "My Profile"),
              ),
              13.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 106.w,
                        height: 106.h,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          "assets/images/avatar1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      15.height(),
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontFamily: "League Spartan",
                            fontWeight: FontWeight.w600,
                            height: 0.8.h,
                            fontSize: 24.sp),
                      )
                    ],
                  )
                ],
              ),

              //next
              40.height(),
              Column(
                children: [
                  for (var i = 0; i < 7; i++)
                    ProfileTile(
                        icon: icons[i],
                        tiletxt: tileTitles[i],
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => pages[i],
                              ));
                        }),
                  15.height()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
