import 'package:flutter/material.dart';
import 'package:my_tasks/core/function/select_date.dart';
import 'package:my_tasks/core/function/select_time.dart';
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
  TextEditingController taskDateController = TextEditingController();
  TextEditingController taskTimeController = TextEditingController();
  TextEditingController taskController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 30),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
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
              CustomButton(
                text: 'Save',
                width: MediaQuery.of(context).size.width * 0.9,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
