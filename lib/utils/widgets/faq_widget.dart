import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/models/styles.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < 6; i++)
              ExpansionTile(
                title: Text(
                  "Lorem ipsum dolor sit amet",
                  style: TextStyle(
                      fontFamily: "League Spartan",
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
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