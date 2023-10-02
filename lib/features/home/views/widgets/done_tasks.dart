import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';

class DoneTasks extends StatelessWidget {
  const DoneTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: const BoxDecoration(
        color: kSecondColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
