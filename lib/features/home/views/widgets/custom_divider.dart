import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 2.0,
      color: kPrimaryColor,
    );
  }
}
