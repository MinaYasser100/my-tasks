import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
