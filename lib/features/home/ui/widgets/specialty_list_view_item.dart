import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themeing/colors.dart';

class SpecialtyListViewItem extends StatelessWidget {
  const SpecialtyListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> doctorsSpecialityItems = [
      'Ophthalmology',
      'Dermatology ',
      'Cardiology',
      'Neurology',
      'Pediatrics'
    ];
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctorsSpecialityItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.0.r,
                  backgroundColor: ColorsManager.lightBlue,
                  child: Image.asset(
                    "assets/images/doctor_cartoon.png",
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(10.h),
                Text(
                  doctorsSpecialityItems[index],
                  style: TextStyles.font12DarkBlueRegular,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
