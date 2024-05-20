// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:medical_application/pages/doctor_info_page.dart';
// import 'package:medical_application/utils/extensions/extensions.dart';
// import 'package:medical_application/utils/models/doctors_model.dart';
// import 'package:medical_application/utils/models/styles.dart';
// import 'package:medical_application/utils/widgets/doctors_page_card.dart';
// import 'package:medical_application/utils/widgets/icon_secondary_doctorsinfo.dart';
// import 'package:medical_application/utils/widgets/rated_list.dart';
// import 'package:medical_application/utils/widgets/sorted_doctors_list.dart';

// class DoctorsScrollPage extends StatefulWidget {
//   bool isInRating;
//   bool isInSorted;
//   DoctorsScrollPage(
//       {super.key, this.isInRating = false, this.isInSorted = false});

//   @override
//   State<DoctorsScrollPage> createState() => _DoctorsScrollPageState();
// }

// class _DoctorsScrollPageState extends State<DoctorsScrollPage> {
//   PageController _controller = PageController();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Future.delayed(Duration.zero, () {
//       print(widget.isInRating);
//       print(widget.isInSorted);
//       widget.isInRating
//           ? _controller.animateToPage(1,
//               duration: Duration.zero, curve: Curves.easeInOut)
//           : _controller.animateToPage(0,
//               duration: Duration.zero, curve: Curves.easeInOut);
//     }).then(
//       (value) => setState(() {}),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                   top: 35.h, left: 30.w, right: 30.w, bottom: 20.h),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       InkWell(
//                         borderRadius: BorderRadius.circular(100.r),
//                         onTap: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: const Icon(
//                           Icons.arrow_back_ios,
//                           color: AppColor.primaryColor,
//                         ),
//                       ),
//                       Text(
//                         widget.isInRating ? "Rating" : "Doctors",
//                         style: AppTextStyles.headlineBlue600Text,
//                       ),
//                       Row(
//                         children: [
//                           DoctorsInfoIconSecondaryColor(
//                             icon: Icons.search,
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   21.height(),
//                   Row(
//                     children: [
//                       Text(
//                         "Sort By ",
//                         style: AppTextStyles.registerLoginRegularBlackText,
//                       ),
//                       InkWell(
//                         borderRadius: BorderRadius.circular(100),
//                         onTap: () {
//                           _controller.animateToPage(0,
//                               duration: Duration(milliseconds: 300),
//                               curve: Curves.easeInOut);
//                         },
//                         child: Container(
//                           margin: EdgeInsets.only(right: 3.w),
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 9.w, vertical: 5.h),
//                           decoration: BoxDecoration(
//                               color: widget.isInSorted
//                                   ? AppColor.primaryColor
//                                   : AppColor.secondaryColor,
//                               borderRadius: BorderRadius.circular(13.r)),
//                           child: Text(
//                             "A -> Z",
//                             style: TextStyle(
//                               color: widget.isInSorted
//                                   ? Colors.white
//                                   : AppColor.primaryColor,
//                               fontFamily: "League Spartan",
//                               fontWeight: FontWeight.w500,
//                               fontSize: 12.sp,
//                               height: 0.9.h,
//                             ),
//                           ),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           _controller.animateToPage(1,
//                               duration: Duration(milliseconds: 300),
//                               curve: Curves.easeInOut);
//                         },
//                         icon: DoctorsInfoIconSecondaryColor(
//                           isTapped: widget.isInRating,
//                           icon: Icons.star,
//                         ),
//                       ),
//                       DoctorsInfoIconSecondaryColor(
//                         icon: Icons.favorite_border,
//                       ),
//                       DoctorsInfoIconSecondaryColor(
//                         icon: Icons.female,
//                       ),
//                       DoctorsInfoIconSecondaryColor(
//                         icon: Icons.male,
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: PageView(
//                 onPageChanged: (index) {
//                   if (index == 0) {
//                     widget.isInSorted = true;
//                     widget.isInRating = false;
//                     setState(() {});
//                   } else if (index == 1) {
//                     widget.isInSorted = false;
//                     widget.isInRating = true;
//                     setState(() {});
//                   }
//                 },
//                 controller: _controller,
//                 children: [SortedDoctorsList(), RatedDoctorsList()],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/utils/extensions/extensions.dart';
import 'package:medical_application/utils/models/styles.dart';
import 'package:medical_application/utils/widgets/icon_secondary_doctorsinfo.dart';
import 'package:medical_application/utils/widgets/rated_list.dart';
import 'package:medical_application/utils/widgets/sorted_doctors_list.dart';

class DoctorsScrollPage extends StatefulWidget {
  final bool isInRating;
  final bool isInSorted;

  DoctorsScrollPage({
    Key? key,
    this.isInRating = false,
    this.isInSorted = false,
  }) : super(key: key);

  @override
  _DoctorsScrollPageState createState() => _DoctorsScrollPageState();
}

class _DoctorsScrollPageState extends State<DoctorsScrollPage> {
  late PageController _controller;
  late bool _isInRating;
  late bool _isInSorted;

  @override
  void initState() {
    super.initState();
    _isInRating = widget.isInRating;
    _isInSorted = widget.isInSorted;
    _controller = PageController(
      initialPage: _isInRating ? 1 : 0,
    );
    // Future.delayed(Duration(seconds: 1), () {
    //   _controller.animateToPage(
    //     _isInRating ? 1 : 0,
    //     duration: Duration.zero,
    //     curve: Curves.easeInOut,
    //   );
    // });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 35.h,
                left: 30.w,
                right: 30.w,
                bottom: 20.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(100.r),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      Text(
                        _isInRating ? "Rating" : "Doctors",
                        style: AppTextStyles.headlineBlue600Text,
                      ),
                      Row(
                        children: [
                          DoctorsInfoIconSecondaryColor(
                            icon: Icons.search,
                          ),
                        ],
                      ),
                    ],
                  ),
                  21.height(),
                  Row(
                    children: [
                      Text(
                        "Sort By ",
                        style: AppTextStyles.registerLoginRegularBlackText,
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          _controller.animateToPage(
                            0,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 3.w),
                          padding: EdgeInsets.symmetric(
                            horizontal: 9.w,
                            vertical: 5.h,
                          ),
                          decoration: BoxDecoration(
                            color: _isInSorted
                                ? AppColor.primaryColor
                                : AppColor.secondaryColor,
                            borderRadius: BorderRadius.circular(13.r),
                          ),
                          child: Text(
                            "A -> Z",
                            style: TextStyle(
                              color: _isInSorted
                                  ? Colors.white
                                  : AppColor.primaryColor,
                              fontFamily: "League Spartan",
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              height: 0.9.h,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _controller.animateToPage(
                            1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: DoctorsInfoIconSecondaryColor(
                          isTapped: _isInRating,
                          icon: Icons.star,
                        ),
                      ),
                      DoctorsInfoIconSecondaryColor(
                        icon: Icons.favorite_border,
                      ),
                      DoctorsInfoIconSecondaryColor(
                        icon: Icons.female,
                      ),
                      DoctorsInfoIconSecondaryColor(
                        icon: Icons.male,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    _isInSorted = index == 0;
                    _isInRating = index == 1;
                  });
                },
                controller: _controller,
                children: [
                  SortedDoctorsList(),
                  RatedDoctorsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
