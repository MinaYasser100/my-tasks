import 'package:flutter/material.dart';
import 'package:my_tasks/core/repo/sqflite_repo_impl.dart';
import 'package:my_tasks/core/utils/route_pages.dart';
import 'package:my_tasks/features/splash_view/views/widgets/custom_button.dart';
import 'texts_field_from_edit_task.dart';

class EditTaskViewBody extends StatefulWidget {
  const EditTaskViewBody(
      {super.key,
      required this.taskTitel,
      required this.taskDate,
      required this.taskTime,
      required this.task,
      required this.taskId});
  final String taskTitel;
  final String taskDate;
  final String taskTime;
  final String task;
  final String taskId;
  @override
  State<EditTaskViewBody> createState() => _EditTaskViewBodyState();
}

class _EditTaskViewBodyState extends State<EditTaskViewBody> {
  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskDateController = TextEditingController();
  TextEditingController taskTimeController = TextEditingController();
  TextEditingController taskController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  SqfliteRepoImpl sql = SqfliteRepoImpl();
  @override
  void initState() {
    taskController.text = widget.task;
    taskDateController.text = widget.taskDate;
    taskTimeController.text = widget.taskTime;
    taskTitleController.text = widget.taskTitel;
    super.initState();
  }

  @override
  void dispose() {
    taskController;
    taskDateController;
    taskTimeController;
    taskTitleController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 30),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextsFieldFormEditTask(
                  taskTitleController: taskTitleController,
                  taskDateController: taskDateController,
                  taskTimeController: taskTimeController,
                  taskController: taskController),
              CustomButton(
                text: 'Save',
                width: MediaQuery.of(context).size.width * 0.9,
                onPressed: () async {
                  Navigator.pushReplacementNamed(
                      context, RoutePages.kAllTasksTodayView);
                  await sql.updateDatabaseItem(
                    table: "tasks",
                    values: {
                      "title": taskTitleController.text,
                      "task": taskController.text,
                      "time": taskTimeController.text.toString(),
                      "date": taskDateController.text.toString(),
                    },
                    whereData: "id = ${widget.taskId}",
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
