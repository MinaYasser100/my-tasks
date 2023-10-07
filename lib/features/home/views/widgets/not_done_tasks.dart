import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:my_tasks/core/repo/sqflite_repo_impl.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'no_tasks.dart';
import 'not_done_tasks_list_view.dart';

class NotDoneTasks extends StatelessWidget {
  const NotDoneTasks({
    super.key,
    required this.notDoneTasks,
    required this.sql,
  });
  final List<Map<String, Object?>> notDoneTasks;
  final SqfliteRepoImpl sql;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.29,
      decoration: const BoxDecoration(
        color: kSecondColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ConditionalBuilder(
        condition: notDoneTasks.isNotEmpty,
        builder: (context) {
          return NotDoneTasksListView(notDoneTasks: notDoneTasks, sql: sql);
        },
        fallback: (context) {
          return const NoTasks(
            text: 'No Tasks In This Day',
          );
        },
      ),
    );
  }
}
