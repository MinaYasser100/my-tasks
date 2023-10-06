import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/styles.dart';
import 'package:my_tasks/features/add_new_task/views/widgets/custom_text_form_field.dart';

import 'date_and_time_edit_view.dart';

class TextsFieldFormEditTask extends StatelessWidget {
  const TextsFieldFormEditTask({
    super.key,
    required this.taskTitleController,
    required this.taskDateController,
    required this.taskTimeController,
    required this.taskController,
  });

  final TextEditingController taskTitleController;
  final TextEditingController taskDateController;
  final TextEditingController taskTimeController;
  final TextEditingController taskController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Task Title',
          style: Styles.textStyle20,
        ),
        const SizedBox(height: 5.0),
        CustomTextFomField(
          hintText: 'Task Title',
          textEditingController: taskTitleController,
        ),
        const SizedBox(height: 30),
        DateAndTimeEditView(
          taskDateController: taskDateController,
          taskTimeController: taskTimeController,
        ),
        const SizedBox(height: 40),
        const Text(
          'Task',
          style: Styles.textStyle20,
        ),
        const SizedBox(height: 5),
        CustomTextFomField(
          hintText: 'Task',
          textEditingController: taskController,
          maxLiens: 6,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
