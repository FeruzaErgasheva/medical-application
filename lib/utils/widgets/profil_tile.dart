import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/icon_secondary_doctorsinfo.dart';

class ProfileTile extends StatelessWidget {
  IconData icon;
  String tiletxt;
  Function()? onTap;
  ProfileTile(
      {super.key,
      required this.icon,
      required this.tiletxt,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 40.w,
        height: 40.h,
        child: DoctorsInfoIconSecondaryColor(
          icon: icon,
        ),
      ),
      title: Text(
        tiletxt,
        style: AppTextStyles.regularBlack20,
      ),
      trailing: InkWell(
        onTap: onTap,
        child: Icon(
          Icons.arrow_forward_ios,
          color: AppColor.secondaryColor,
        ),
      ),
    );
  }
}
