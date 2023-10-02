import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_tasks/core/utils/route_pages.dart';
import 'package:my_tasks/features/splash_view/views/widgets/custom_button.dart';

import 'widgets/welcome_text.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const WelcomeText(),
            Lottie.asset('assets/animation_ln8pat77.json'),
            const SizedBox(
              height: 30.0,
            ),
            CustomButton(
              text: 'Get Start',
              width: MediaQuery.of(context).size.width * 0.7,
              onPressed: () {
                Navigator.pushReplacementNamed(context, RoutePages.kHomeView);
              },
            )
          ],
        ),
      ),
    );
  }
}
