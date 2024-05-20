import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/widgets/appbar_common.dart';
import 'package:medical_application/utils/widgets/notification_tile.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  List notifications = [
    "General Notification",
    "Sound",
    "Sound Call",
    "Vibrate",
    "Special Offers",
    "Payments",
    "Promo and Discount",
    "Cashback"
  ];

  List notificationStates = [true, true, true, true, true, true, true, true];

  void onChanged(bool isLight, int index) {
    setState(() {
      notificationStates[index] = !notificationStates[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 35.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 50.w),
                child: AppBarCommon(headlinetext: "Notification Setting"),
              ),
              45.height(),
              Column(
                children: [
                  for (var i = 0; i < notifications.length; i++)
                    NotificationTile(
                      isLight: notificationStates[i],
                      titleTxt: notifications[i],
                      onChanged: (isLight) => onChanged(isLight, i),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
