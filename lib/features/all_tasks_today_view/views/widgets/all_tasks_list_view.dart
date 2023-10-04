import 'package:flutter/material.dart';
import 'all_tasks_list_view_item.dart';

class AllTasksListView extends StatelessWidget {
  const AllTasksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return const AllTasksListViewItem();
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        itemCount: 12);
  }
}
