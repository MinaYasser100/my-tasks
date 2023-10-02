import 'package:flutter/material.dart';
import 'initial_home_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: InitialHomeWidget(),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.36,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
