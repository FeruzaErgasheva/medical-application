import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/appbar_common.dart';
import 'package:medical_application/utils/widgets/text_btn.dart';
import 'package:medical_application/utils/widgets/textfield_widget.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 130.w, top: 35.h),
                child: AppBarCommon(headlinetext: "Add Card"),
              ),
              26.height(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/images/card.png'),
                    27.height(),
                    Text(
                      "Card Holder Name",
                      style: AppTextStyles.regularBlack20,
                    ),
                    7.height(),
                    MyTextFieldBluHint(
                        text: "John Doe",
                        suffixBool: false,
                        controller: TextEditingController()),
                    27.height(),
                    Text(
                      "Card Number",
                      style: AppTextStyles.regularBlack20,
                    ),
                    7.height(),
                    MyTextFieldBluHint(
                        text: "000 000 000 000",
                        suffixBool: false,
                        controller: TextEditingController()),
                    20.height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 130.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expiry Date",
                                  style: AppTextStyles.regularBlack20,
                                ),
                                7.height(),
                                MyTextFieldBluHint(
                                    text: "04/28",
                                    suffixBool: false,
                                    controller: TextEditingController()),
                              ],
                            )),
                        SizedBox(
                            width: 130.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CVV",
                                  style: AppTextStyles.regularBlack20,
                                ),
                                7.height(),
                                MyTextFieldBluHint(
                                    text: "0000",
                                    suffixBool: false,
                                    controller: TextEditingController()),
                              ],
                            ))
                      ],
                    ),
                    70.height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextBtn(
                            text: "Save Card",
                            btnTapped: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) =>
                                    FullScreenModalBottomSheet(),
                              );
                            })
                      ],
                    )
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

class FullScreenModalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      snapAnimationDuration: Duration(seconds: 4),
      initialChildSize:
          1.0, // initial height as a fraction of the screen height
      minChildSize: 0.25, // minimum height as a fraction of the screen height
      maxChildSize: 1.0, // maximum height as a fraction of the screen height
      expand: true,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: AppColor.primaryColor,
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/modalBottomSheet.png"),
                  32.height(),
                  Text(
                    "Congratulations",
                    style: TextStyle(
                        fontFamily: "League Spartan",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 36,
                        height: 0.7.h),
                  ),
                  20.height(),
                  Text(
                    "Payment is successfully",
                    style: TextStyle(
                        fontFamily: "League Spartan",
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 28,
                        height: 0.7.h),
                  ),
                  15.height(),
                  ElevatedButton(
                    onPressed: () async {
                      Future.delayed(Duration(milliseconds: 500), () {
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      'Close',
                      style: AppTextStyles.registerLoginRegularBlue500Text,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
