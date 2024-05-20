import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

class CircularCheckbox extends StatefulWidget {
  Function()? onTap;
  bool isChecked;
  CircularCheckbox({super.key, required this.isChecked, required this.onTap});

  @override
  _CircularCheckboxState createState() => _CircularCheckboxState();
}

class _CircularCheckboxState extends State<CircularCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        child: Container(
          padding: EdgeInsets.all(4),
          width: 10.0.w,
          height: 10.0.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColor.primaryColor,
              width: 2.0,
            ),
            color: Colors.transparent,
          ),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.primaryColor),
                shape: BoxShape.circle,
                color: widget.isChecked
                    ? AppColor.primaryColor
                    : Colors.transparent),
          ),
        ),
      ),
    );
  }
}
