
import 'package:flutter/material.dart';

import 'Apps/starter.dart';
import 'models/theme.dart';
import 'router/route.dart';
import 'views/apps.dart';
import 'views/demo.dart';
import 'views/home.dart';
import 'views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,

      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),

      initialRoute: AppRoutes.homeRoute,
      routes: {
        AppRoutes.homeRoute: (context) => HomeViews(),
        AppRoutes.loginRoute: (context) => LoginViews(),
        AppRoutes.demoRoute: (context) => DemoViews(),
        AppRoutes.appRoute: (context) => AppViews(),
        AppRoutes.starterApp: (context) => StarterApp(),
      },
    );
  }
}
