import 'package:flutter/material.dart';
import 'package:my_tasks/core/repo/sqflite_repo_impl.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/route_pages.dart';
import 'custom_divider.dart';
import 'my_task_list_view_item.dart';

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
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return MyTaskListViewItem(
            iconData: Icons.crop_square_outlined,
            notDonetask: notDoneTasks[index],
            onPressedDone: () async {
              Navigator.pushReplacementNamed(context, RoutePages.kHomeView);
              int response = await sql.updateDatabaseItem(
                table: "tasks",
                values: {"done": 1},
                whereData: "id = ${notDoneTasks[index]['id']}",
              );
              print(response);
            },
          );
        },
        separatorBuilder: (context, index) {
          return const CustomDivider();
        },
        itemCount: notDoneTasks.length,
      ),
    );
  }
}
