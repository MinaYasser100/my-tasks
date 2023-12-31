import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 80, bottom: 50),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: const Column(
        children: [
          Text(
            'WELCOME',
            style: Styles.textStyle50,
          ),
          Text(
            'TODO LIST',
            style: Styles.textStyle40,
          ),
        ],
      ),
    );
  }
}
