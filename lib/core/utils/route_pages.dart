import 'package:flutter/material.dart';
import 'package:my_tasks/features/home/views/home_view.dart';
import 'package:my_tasks/features/splash_view/views/splash_view.dart';

abstract class RoutePages {
  static String kHomeView = 'homeView';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashView(),
    kHomeView: (context) => const HomeView(),
  };
}
