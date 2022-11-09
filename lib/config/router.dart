import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quranapps/pages/homepage_screens.dart';
import 'package:quranapps/pages/surahdetail_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return PageTransition(
            child: const HomePage(),
            type: PageTransitionType.fade,
            settings: settings);
      case '/surah':
        return PageTransition(
            child: const SurahDetailScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(
            "Error",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
