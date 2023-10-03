import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/styles.dart';

class InitialHomeWidget extends StatelessWidget {
  const InitialHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.list_alt_rounded,
                    color: kLightGrey,
                  )),
            ),
          ),
          const Text(
            '27 Agu 2023',
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 146, 146, 146),
            ),
          ),
          const Text(
            'My Todo List',
            style: Styles.textStyle40,
          )
        ],
      ),
    );
  }
}
