import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/features/add_new_task/views/widgets/add_new_task_view_body.dart';

class AddNewTaskView extends StatelessWidget {
  const AddNewTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        title: const Text('Add New Task'),
        centerTitle: true,
      ),
      body: const AddNewTaskViewBody(),
    );
  }
}
