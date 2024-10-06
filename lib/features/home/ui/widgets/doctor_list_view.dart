import 'package:doctor/features/home/ui/widgets/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const DoctorListViewItem();
        },
      ),
    );
  }
}
