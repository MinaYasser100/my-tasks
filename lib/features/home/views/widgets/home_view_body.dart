import 'package:flutter/material.dart';
import 'package:my_tasks/features/splash_view/views/widgets/custom_button.dart';
import 'complete_title.dart';
import 'done_tasks.dart';
import 'initial_home_view.dart';
import 'not_done_tasks.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.53,
          child: const Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: InitialHomeWidget(),
              ),
              NotDoneTasks(),
            ],
          ),
        ),
        const CompleteTitle(),
        const DoneTasks(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: CustomButton(
              text: 'Add New Task',
              width: MediaQuery.of(context).size.width * 0.8),
        )
      ],
    );
  }
}
