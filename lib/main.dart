import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/route_pages.dart';

void main() {
  runApp(const MyTasks());
}

class MyTasks extends StatelessWidget {
  const MyTasks({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
      ),
      routes: RoutePages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
