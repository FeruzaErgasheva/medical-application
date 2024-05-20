import 'package:flutter/material.dart';
import 'package:medical_application/utils/models/styles.dart';

class Settingstile extends StatelessWidget {
  Function()? onTap;
  String tileTxt;
  Widget leading;
  Settingstile(
      {super.key,
      required this.onTap,
      required this.leading,
      required this.tileTxt});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        tileTxt,
        style: AppTextStyles.regularBlack20,
      ),
      trailing: InkWell(
        onTap: onTap,
        child: Icon(
          Icons.arrow_forward_ios_outlined,
          color: AppColor.primaryColor,
        ),
      ),
    );
  }
}
