import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/function/custom_app_bar.dart';
import 'package:my_tasks/features/all_tasks_today_view/views/widgets/all_tasks_today_view_body.dart';

class AllTaskTodayView extends StatelessWidget {
  const AllTaskTodayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      appBar: customAppBar(
        title: 'All Tasks Today',
      ),
      body: const AllTasksTodayViewBody(),
    );
  }
}
