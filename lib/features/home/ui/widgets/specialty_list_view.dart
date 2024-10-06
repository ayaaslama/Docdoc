import 'package:doctor/features/home/ui/widgets/specialty_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialtyListView extends StatelessWidget {
  const SpecialtyListView({super.key});

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
          return SpecialtyListViewItem(
            doctorsSpecialityItems: doctorsSpecialityItems,
            index: index,
          );
        },
      ),
    );
  }
}
