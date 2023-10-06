import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/route_pages.dart';

class AllTasksListViewItem extends StatefulWidget {
  const AllTasksListViewItem({
    super.key,
    required this.dayTask,
  });
  final Map<String, Object?> dayTask;

  @override
  State<AllTasksListViewItem> createState() => _AllTasksListViewItemState();
}

class _AllTasksListViewItemState extends State<AllTasksListViewItem> {
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text(
          widget.dayTask["title"].toString(),
          style: const TextStyle(
            fontSize: 18.0,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.dayTask["task"].toString(),
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
                        'taskTitle': widget.dayTask["title"].toString(),
                        'taskDate': widget.dayTask["date"].toString(),
                        'taskTime': widget.dayTask["time"].toString(),
                        'task': widget.dayTask["task"].toString(),
                        'id': widget.dayTask["id"].toString(),
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
