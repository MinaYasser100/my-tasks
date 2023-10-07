import 'package:flutter/material.dart';
import 'package:my_tasks/core/function/custom_app_bar.dart';
import 'package:my_tasks/features/edit_task_view/views/widgets/edit_task_view_body.dart';

class EditTaskView extends StatelessWidget {
  const EditTaskView({super.key});
  @override
  Widget build(BuildContext context) {
    final argu =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: customAppBar(
        title: 'Edit Task',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: EditTaskViewBody(
        taskTitel: argu['taskTitle'],
        taskDate: argu['taskDate'],
        taskTime: argu['taskTime'],
        task: argu['task'],
        taskId: argu['id'],
      ),
    );
  }
}
