import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';

class CompleteTitle extends StatelessWidget {
  const CompleteTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 5, bottom: 5),
          child: Text(
            'Complete',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.check_circle,
          color: kPrimaryColor,
        )
      ],
    );
  }
}
