import 'package:flutter/material.dart';

class MyTaskListViewItem extends StatelessWidget {
  const MyTaskListViewItem({
    super.key,
    required this.iconData,
  });
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Title item',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: const Text(
        '10:50 AM',
      ),
      trailing: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Icon(iconData),
      ),
    );
  }
}
