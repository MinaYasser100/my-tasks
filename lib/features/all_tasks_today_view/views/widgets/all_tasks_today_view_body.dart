import 'package:flutter/material.dart';

import 'all_tasks_date_today.dart';

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
      ],
    );
  }
}
