import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_tasks/core/repo/sqflite_repo_impl.dart';
import 'package:my_tasks/core/utils/route_pages.dart';
import 'package:my_tasks/features/splash_view/views/widgets/custom_button.dart';
import 'complete_title.dart';
import 'done_tasks.dart';
import 'initial_home_view.dart';
import 'not_done_tasks.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final SqfliteRepoImpl sql = SqfliteRepoImpl();
  List<Map<String, Object?>> notDoneTasks = [];
  List<Map<String, Object?>> doneTasks = [];
  @override
  void initState() {
    readNotDoneTasks();
    readDoneTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.53,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: InitialHomeWidget(),
              ),
              NotDoneTasks(
                notDoneTasks: notDoneTasks,
                sql: sql,
              ),
            ],
          ),
        ),
        const CompleteTitle(),
        DoneTasks(
          doneTasks: doneTasks,
          sql: sql,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: CustomButton(
            text: 'Add New Task',
            width: MediaQuery.of(context).size.width * 0.8,
            onPressed: () {
              Navigator.pushNamed(context, RoutePages.kAddNewTaskView);
            },
          ),
        )
      ],
    );
  }

  readNotDoneTasks() async {
    List<Map<String, Object?>> response =
        await sql.readDatabase(table: "tasks");
    selectNotDoneTasks(response);
    setState(() {});
  }

  void selectNotDoneTasks(List<Map<String, Object?>> response) {
    for (var element in response) {
      DateTime currentDate = DateTime.now();
      String formattedDate = DateFormat('MM/dd/yyyy').format(currentDate);
      if (element["done"] == 0 && formattedDate == element['date']) {
        notDoneTasks.add(element);
      }
    }
  }

  readDoneTasks() async {
    List<Map<String, Object?>> response =
        await sql.readDatabase(table: "tasks");
    selectDoneTasks(response);
    setState(() {});
  }

  void selectDoneTasks(List<Map<String, Object?>> response) {
    for (var element in response) {
      DateTime currentDate = DateTime.now();
      String formattedDate = DateFormat('MM/dd/yyyy').format(currentDate);
      if (element["done"] == 1 && formattedDate == element['date']) {
        doneTasks.add(element);
      }
    }
  }
}
