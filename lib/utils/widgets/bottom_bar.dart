import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatelessWidget {
  Function(int)? onTab;
  BottomBar({super.key, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        iconSize: 20.sp,
        onTabChange: (value) => onTab!(value),
        color: Colors.white,
        activeColor: Colors.black,
        padding: EdgeInsets.all(20),
        tabs: [
          GButton(
            icon: CupertinoIcons.home,
            text: "",
          ),
          GButton(
            icon: CupertinoIcons.chat_bubble_2,
            text: "",
          ),
          GButton(
            icon: CupertinoIcons.person,
            text: "",
          ),
          GButton(
            icon: CupertinoIcons.creditcard,
            text: "",
          ),
        ],
      ),
    );
  }
}
