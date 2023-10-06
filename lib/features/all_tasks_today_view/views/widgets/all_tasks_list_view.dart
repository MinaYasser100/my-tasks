import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_tasks/core/repo/sqflite_repo_impl.dart';
import 'all_tasks_list_view_item.dart';

class AllTasksListView extends StatefulWidget {
  const AllTasksListView({
    super.key,
  });

  @override
  State<AllTasksListView> createState() => _AllTasksListViewState();
}

class _AllTasksListViewState extends State<AllTasksListView> {
  SqfliteRepoImpl sql = SqfliteRepoImpl();
  List<Map<String, Object?>> allDayTasks = [];
  @override
  void initState() {
    readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(allDayTasks);
    return ListView.separated(
        itemBuilder: (context, index) {
          return AllTasksListViewItem(
            dayTask: allDayTasks[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        itemCount: allDayTasks.length);
  }

  Future readData() async {
    List<Map<String, Object?>> tasks = [];
    List<Map<String, Object?>> response =
        await sql.readDatabase(table: 'tasks');
    tasks.addAll(response);
    print(response);
    selectDayTasks(tasks);
    if (mounted) {
      setState(() {});
    }
  }

  void selectDayTasks(List<Map<String, Object?>> tasks) {
    for (var element in tasks) {
      DateTime currentDate = DateTime.now();
      String formattedDate = DateFormat('MM/dd/yyyy').format(currentDate);
      if (formattedDate == element['date']) {
        allDayTasks.add(element);
      }
    }
  }
}
