import 'package:flutter/material.dart';

class NoTasks extends StatelessWidget {
  const NoTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No tasks in this day',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
