import 'package:flutter/material.dart';

class NoTasks extends StatelessWidget {
  const NoTasks({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
