
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < 6; i++)
              ExpansionTile(
                trailing: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 24.w,
                  color: AppColor.primaryColor,
                ),
                leading: Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: const BoxDecoration(
                      color: AppColor.secondaryColor, shape: BoxShape.circle),
                  child: Image.asset("assets/images/contactus1.png"),
                ),
                title: const Text(
                  "Customer service",
                  style: TextStyle(
                      fontFamily: "League Spartan",
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                    child: Text(
                      "Dolore anim eu mollit Lorem laboris. Dolor ullamco exercitation incididunt proident dolore. Lorem officia exercitation in exercitation et dolor eu sit quis officia eu dolor. Sint dolor et sint aute nostrud consectetur et duis officia est anim sit velit adipisicing. Nostrud non ut Lorem ut aliquip fugiat. Eiusmod aliqua id occaecat minim aliqua reprehenderit cillum dolore proident. Deserunt mollit officia aute consectetur ea pariatur culpa pariatur.",
                      style: AppTextStyles.registerLoginRegularBlackText,
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
