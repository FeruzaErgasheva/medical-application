import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_application/pages/doctor_info_page.dart';
import 'package:medical_application/utils/models/doctors_model.dart';
import 'package:medical_application/utils/widgets/doctors_page_card.dart';

class SortedDoctorsList extends StatelessWidget {
  const SortedDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < doctors.length; i++)
              DoctorsPageCard(
                area: doctors[i].area,
                image: doctors[i].image,
                name: doctors[i].name,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DoctorInfoPage(
                            name: doctors[i].name,
                            area: doctors[i].area,
                            image: doctors[i].image,
                            rating: doctors[i].rating,
                            messages: doctors[i].messages,
                            experience: doctors[i].experience,
                            focus: doctors[i].focus),
                      ));
                },
              )
          ],
        ),
      ),
    );
  }
}
