import 'package:flutter/material.dart';
import 'package:my_tasks/core/function/change_task_state.dart';
import 'package:my_tasks/core/repo/sqflite_repo_impl.dart';

import 'custom_divider.dart';
import 'my_task_list_view_item.dart';

class NotDoneTasksListView extends StatelessWidget {
  const NotDoneTasksListView({
    super.key,
    required this.notDoneTasks,
    required this.sql,
  });

  final List<Map<String, Object?>> notDoneTasks;
  final SqfliteRepoImpl sql;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return MyTaskListViewItem(
          iconData: Icons.crop_square_outlined,
          task: notDoneTasks[index],
          onPressed: () async {
            await changeTaskState(
                context: context,
                id: '${notDoneTasks[index]['id']}',
                sql: sql,
                state: 1);
          },
        );
      },
      separatorBuilder: (context, index) {
        return const CustomDivider();
      },
      itemCount: notDoneTasks.length,
    );
  }
}
