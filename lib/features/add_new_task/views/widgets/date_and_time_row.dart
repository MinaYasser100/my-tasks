import 'package:flutter/material.dart';
import 'package:my_tasks/core/function/select_date.dart';
import 'package:my_tasks/core/function/select_time.dart';
import 'package:my_tasks/core/utils/styles.dart';

import 'custom_text_form_field.dart';

class DateAndTimeRow extends StatelessWidget {
  const DateAndTimeRow({
    super.key,
    required this.taskDateController,
    required this.taskTimeController,
  });

  final TextEditingController taskDateController;
  final TextEditingController taskTimeController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Date',
              style: Styles.textStyle20,
            ),
            const SizedBox(height: 5),
            CustomTextFomField(
              hintText: 'MM/dd/yyyy',
              textEditingController: taskDateController,
              onTap: () {
                selectDate(context, taskDateController);
              },
            ),
          ],
        )),
        const SizedBox(width: 10),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Time',
              style: Styles.textStyle20,
            ),
            const SizedBox(height: 5),
            CustomTextFomField(
              hintText: 'hh:mm',
              textEditingController: taskTimeController,
              onTap: () {
                selectTime(
                  context: context,
                  timeController: taskTimeController,
                );
              },
            ),
          ],
        )),
      ],
    );
  }
}
