import 'package:flutter/material.dart';

import '../features/auth/screens/auth_screen.dart';
import 'path.dart';

Route<dynamic>generateRoute(RouteSettings routeSettings){
  switch (routeSettings.name) {
    case RoutePath.authScreen:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
  default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}