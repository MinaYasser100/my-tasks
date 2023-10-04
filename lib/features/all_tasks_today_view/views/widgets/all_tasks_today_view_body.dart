import 'package:flutter/material.dart';
import 'all_tasks_date_today.dart';
import 'all_tasks_list_view.dart';

class AllTasksTodayViewBody extends StatelessWidget {
  const AllTasksTodayViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: AllTasksDateToday(),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: AllTasksListView(),
        ))
      ],
    );
  }
}
