import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/styles.dart';
import 'package:my_tasks/features/splash_view/views/widgets/custom_button.dart';
import 'custom_text_form_field.dart';

class AddNewTaskViewBody extends StatefulWidget {
  const AddNewTaskViewBody({super.key});

  @override
  State<AddNewTaskViewBody> createState() => _AddNewTaskViewBodyState();
}

class _AddNewTaskViewBodyState extends State<AddNewTaskViewBody> {
  TextEditingController taskTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Task Title',
            style: Styles.textStyle20,
          ),
          const SizedBox(height: 5.0),
          const CustomTextFomField(
            hintText: 'Task Title',
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    style: Styles.textStyle20,
                  ),
                  SizedBox(height: 5),
                  CustomTextFomField(hintText: 'Aug,27,2023'),
                ],
              )),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Time',
                    style: Styles.textStyle20,
                  ),
                  SizedBox(height: 5),
                  CustomTextFomField(hintText: '10:50'),
                ],
              )),
            ],
          ),
          const SizedBox(height: 40),
          const Text(
            'Task',
            style: Styles.textStyle20,
          ),
          const SizedBox(height: 5),
          const CustomTextFomField(
            hintText: 'Task',
            maxLiens: 6,
          ),
          const SizedBox(height: 40),
          CustomButton(
              text: 'Save', width: MediaQuery.of(context).size.width * 0.9)
        ],
      ),
    );
  }
}
