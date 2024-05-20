import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/payment/add_card_page.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/appbar_common.dart';
import 'package:medical_application/utils/widgets/circular_checkbox.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35.h, left: 30.w, right: 100.w),
              child: AppBarCommon(headlinetext: "Payment Method"),
            ),
            43.height(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Credit & Debit Card",
                    style: AppTextStyles.headline,
                  ),
                  13.height(),
                  SizedBox(
                    height: 44.h,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: CircularCheckbox(
                              isChecked: isTapped,
                              onTap: () {
                                setState(() {
                                  isTapped = !isTapped;
                                  if (isTapped) {
                                    Future.delayed(Duration(milliseconds: 300),
                                        () async {
                                      await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => AddCardPage(),
                                          ));
                                    });
                                  }
                                });
                              },
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.credit_card,
                            color: AppColor.primaryColor,
                          ),
                          hintStyle: TextStyle(
                              color: AppColor.thirdColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: "League Spartan",
                              fontSize: 18.sp,
                              height: 0.8.h),
                          hintText: "Add New Card",
                          filled: true,
                          fillColor: AppColor.secondaryColor,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  44.height(),
                  Text(
                    "More payment options",
                    style: AppTextStyles.headline,
                  ),
                  20.height(),
                  CardTextField(isTapped: false, hinttext: "Apple Play"),
                  8.height(),
                  CardTextField(isTapped: false, hinttext: "PayPal"),
                  8.height(),
                  CardTextField(isTapped: false, hinttext: "Google Play"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardTextField extends StatefulWidget {
  bool isTapped = false;
  String hinttext;
  CardTextField({super.key, required this.isTapped, required this.hinttext});

  @override
  State<CardTextField> createState() => _CardTextFieldState();
}

class _CardTextFieldState extends State<CardTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.all(12.0),
            child: CircularCheckbox(
              isChecked: widget.isTapped,
              onTap: () {
                setState(() {
                  widget.isTapped = !widget.isTapped;
                  if (widget.isTapped) {
                    Future.delayed(Duration(milliseconds: 300), () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddCardPage(),
                          ));
                    });
                  }
                });
              },
            ),
          ),
          prefixIcon: Icon(
            Icons.credit_card,
            color: AppColor.primaryColor,
          ),
          hintStyle: TextStyle(
              color: AppColor.thirdColor,
              fontWeight: FontWeight.w400,
              fontFamily: "League Spartan",
              fontSize: 18.sp,
              height: 0.8.h),
          hintText: widget.hinttext,
          filled: true,
          fillColor: AppColor.secondaryColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none)),
    );
  }
}
