import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/text_btn.dart';
import 'package:medical_application/utils/widgets/textfield_widget.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});
  void updateProfile() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              35.height(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    Text(
                      "Profile",
                      style: AppTextStyles.headlineBlue600Text,
                    ),
                    Container(
                      padding: EdgeInsets.all(5.r),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              13.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  )
                ],
              ),
              54.height(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full name",
                      style: AppTextStyles.regularBlack20,
                    ),
                    12.height(),
                    TextFieldBlackHint(
                      text: "John Doe",
                      suffixBool: false,
                      controller: TextEditingController(),
                    ),
                    31.height(),
                    Text(
                      "Phone number",
                      style: AppTextStyles.regularBlack20,
                    ),
                    12.height(),
                    TextFieldBlackHint(
                      text: "+123 456 789000",
                      suffixBool: false,
                      controller: TextEditingController(),
                    ),
                    31.height(),
                    Text(
                      "Email",
                      style: AppTextStyles.regularBlack20,
                    ),
                    12.height(),
                    TextFieldBlackHint(
                      text: "johndoe@example.com",
                      suffixBool: false,
                      controller: TextEditingController(),
                    ),
                    31.height(),
                    Text(
                      "Date Of Birth",
                      style: AppTextStyles.regularBlack20,
                    ),
                    12.height(),
                    MyTextFieldBluHint(
                      text: "DD/MM/YYYY",
                      suffixBool: false,
                      controller: TextEditingController(),
                    ),
                    41.height(),
                    TextBtn(text: "Update Profile", btnTapped: updateProfile),
                    30.height()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
