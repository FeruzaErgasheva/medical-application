import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/profile/settings/notification_settings.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/appbar_common.dart';
import 'package:medical_application/utils/widgets/settings_tile.dart';

class SettingsMainPage extends StatefulWidget {
  const SettingsMainPage({super.key});

  @override
  State<SettingsMainPage> createState() => _SettingsMainPageState();
}

class _SettingsMainPageState extends State<SettingsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              35.height(),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 120.w),
                child: AppBarCommon(headlinetext: "Settings"),
              ),
              58.height(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Settingstile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NotificationSettings(),
                              ));
                        },
                        leading: Image.asset(
                          "assets/images/notification.png",
                          width: 24.w,
                        ),
                        tileTxt: "Notification setting"),
                    20.height(),
                    Settingstile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PasswordManagerPage(),
                              ));
                        },
                        leading: Image.asset("assets/images/password.png"),
                        tileTxt: "Password  Manager"),
                    20.height(),
                    Settingstile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DeleteAccountPage(),
                              ));
                        },
                        leading: Icon(
                          CupertinoIcons.person,
                          color: AppColor.primaryColor,
                          size: 24.w,
                        ),
                        tileTxt: "Delete account")
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

class PasswordManagerPage extends StatelessWidget {
  const PasswordManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ignore: unnecessary_const
      body: const Center(
        child: Text("Password manager page"),
      ),
    );
  }
}

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Delete account page"),
      ),
    );
  }
}
