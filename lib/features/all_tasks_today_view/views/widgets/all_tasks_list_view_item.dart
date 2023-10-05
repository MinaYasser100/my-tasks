import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/route_pages.dart';

class AllTasksListViewItem extends StatelessWidget {
  const AllTasksListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: const Text(
          'Task title',
          style: TextStyle(
            fontSize: 18.0,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          'this is the task body in the list tile in text widget',
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
                        'taskTitle': 'taskTitle',
                        'taskDate': 'taskDate',
                        'taskTime': 'taskTime',
                        'task': 'task',
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
