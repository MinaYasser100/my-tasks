import 'package:flutter/material.dart';
import 'package:my_tasks/core/function/change_task_state.dart';
import 'package:my_tasks/core/repo/sqflite_repo_impl.dart';
import 'package:my_tasks/core/utils/constant.dart';

import 'custom_divider.dart';
import 'my_task_list_view_item.dart';

class DoneTasks extends StatelessWidget {
  const DoneTasks({
    super.key,
    required this.doneTasks,
    required this.sql,
  });
  final List<Map<String, Object?>> doneTasks;
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
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return MyTaskListViewItem(
            iconData: Icons.check_box_rounded,
            task: doneTasks[index],
            onPressed: () async {
              await changeTaskState(
                  context: context,
                  id: '${doneTasks[index]['id']}',
                  sql: sql,
                  state: 0);
            },
          );
        },
        separatorBuilder: (context, index) {
          return const CustomDivider();
        },
        itemCount: doneTasks.length,
      ),
    );
  }
}
