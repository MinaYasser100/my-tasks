import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_tasks/core/utils/constant.dart';

class AllTasksDateToday extends StatelessWidget {
  const AllTasksDateToday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('EE, MMM d, y').format(currentDate);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: kPrimaryColor,
      ),
      child: Text(
        formattedDate.toString(),
        style: const TextStyle(
          color: kLightGrey,
          fontSize: 20,
        ),
      ),
    );
  }
}
