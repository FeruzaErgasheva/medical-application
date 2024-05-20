import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/chat_page.dart';
import 'package:medical_application/pages/home_page.dart';
import 'package:medical_application/pages/payment_page.dart';
import 'package:medical_application/pages/profile/profile_page.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/bottom_bar.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  List _pages = [HomePage(), ChatPage(), ProfilePage(), PaymentPage()];
  int _selectedIndex = 0;

  void onBottomBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(24.r)),
        margin: EdgeInsets.symmetric(horizontal: 31.w, vertical: 10.h),
        child: BottomBar(
          onTab: (index) => onBottomBarTapped(index),
        ),
      ),
    );
  }
}
