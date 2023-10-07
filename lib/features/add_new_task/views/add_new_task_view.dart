import 'package:flutter/material.dart';
import 'package:my_tasks/core/function/custom_app_bar.dart';
import 'package:my_tasks/core/utils/route_pages.dart';
import 'package:my_tasks/features/add_new_task/views/widgets/add_new_task_view_body.dart';

class AddNewTaskView extends StatelessWidget {
  const AddNewTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: 'Add New Task',
          onPressed: () {
            Navigator.pushReplacementNamed(context, RoutePages.kHomeView);
          }),
      body: const AddNewTaskViewBody(),
    );
  }
}
