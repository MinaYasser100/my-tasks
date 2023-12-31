import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';

class MyTaskListViewItem extends StatelessWidget {
  const MyTaskListViewItem({
    super.key,
    required this.iconData,
    required this.task,
    this.onPressed,
  });
  final IconData iconData;
  final Map<String, Object?> task;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task["title"].toString(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        task["time"].toString(),
      ),
      trailing: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
