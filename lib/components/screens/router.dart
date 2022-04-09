import 'package:flutter/material.dart';

import 'about/about_screen.dart';
import 'home/home_screen.dart';
import 'popular/popular_screen.dart';

export 'package:elecar/extensions/navigator.dart';

abstract class RootRoutes {
  static const String home = '/home';
  static const String about = '/about';
  static const String popular = '/popular';
}

class RootRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RootRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case RootRoutes.about:
        return MaterialPageRoute(
          builder: (_) => const AboutScreen(),
        );
      case RootRoutes.popular:
        return MaterialPageRoute(
          builder: (_) => const PopularScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        );
    }
  }
}
