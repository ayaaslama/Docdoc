import 'package:doctor/features/home/ui/widgets/doctor_list_view.dart';
import 'package:doctor/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doctor/features/home/ui/widgets/doctors_specialty_see_all.dart';
import 'package:doctor/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor/features/home/ui/widgets/specialty_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialtySeeAll(),
              verticalSpace(16.h),
              const SpecialtyListViewItem(),
              verticalSpace(8.h),
              const DoctorListView(),
            ],
          ),
        ),
      ),
    );
  }
}
