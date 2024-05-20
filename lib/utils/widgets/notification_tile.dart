import 'package:flutter/material.dart';
import 'package:medical_application/utils/models/styles.dart';

class NotificationTile extends StatefulWidget {
  String titleTxt;
  bool isLight ;
  void Function(bool)? onChanged;
  NotificationTile({super.key, required this.titleTxt,required this.onChanged,required this.isLight});

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.titleTxt,
        style: AppTextStyles.regularBlack20,
      ),
      trailing: Switch(
        activeColor: AppColor.primaryColor,
        value: widget.isLight,
        onChanged: widget.onChanged,
      ),
    );
  }
}
