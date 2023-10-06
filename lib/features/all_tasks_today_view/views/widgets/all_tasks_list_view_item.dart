import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/route_pages.dart';

class AllTasksListViewItem extends StatelessWidget {
  const AllTasksListViewItem({
    super.key,
    required this.dayTask,
  });
  final Map<String, Object?> dayTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text(
          dayTask["title"].toString(),
          style: const TextStyle(
            fontSize: 18.0,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          dayTask["task"].toString(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Color.fromARGB(255, 191, 85, 78),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutePages.kEditTaskView,
                      arguments: {
                        'taskTitle': dayTask["title"].toString(),
                        'taskDate': dayTask["date"].toString(),
                        'taskTime': dayTask["time"].toString(),
                        'task': dayTask["task"].toString(),
                      });
                },
                icon: const Icon(
                  Icons.edit_outlined,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
