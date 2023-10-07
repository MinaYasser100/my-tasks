import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';

class MyTaskListViewItem extends StatelessWidget {
  const MyTaskListViewItem({
    super.key,
    required this.iconData,
    required this.notDonetask,
    this.onPressedDone,
  });
  final IconData iconData;
  final Map<String, Object?> notDonetask;
  final void Function()? onPressedDone;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        notDonetask["title"].toString(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        notDonetask["time"].toString(),
      ),
      trailing: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressedDone,
        icon: Icon(
          iconData,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
