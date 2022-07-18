# Navigate to a new screen and back

> App Routes

```dart
class AppRoutes {
  static String homeRoute = "/";
  static String firstRoute = '/first';
  static String secondRoute = '/second';
  static String thirdRoute = '/third';
  static String gridViewDemo = '/grid';
}
```

> Main.dart

```dart

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../theme_manager.dart';
import '../demo/demo_01.dart';
import '../demo/demo_02.dart';
import '../demo/demo_03.dart';
import '../grid_view.dart';
import '../home_screen.dart';
import '../route/app_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),

      // initialRoute: "/",
      initialRoute: AppRoutes.homeRoute,
      routes: {
        AppRoutes.homeRoute: (context) =>  NavigationHomeViews(),
        AppRoutes.firstRoute: (context) => const DemoViews01(),
        AppRoutes.secondRoute: (context) => const DemoViews02(),
        AppRoutes.thirdRoute: (context) => const DemoViews03(),
        AppRoutes.gridViewDemo: (context) => GridViewDemo(),
      },
      //! page views
      // home: Scaffold(),
    );
  }
}

```

> Navigations

```dart
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../route/app_route.dart';


class FirstNav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Navigate to a new screen and back'),
          SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Demo One'),

            //!  =>   named from (route/app_route.dart)
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.firstRoute)
          ),

```

> Navigate with named routes/path (NOT RECOMENDED)

```dart
Center(
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, AppRoutes.thirdRoute),

            //! Alternatives:
             onPressed: () => Navigator.pushNamed(context, '/third'),

            //! or
             onPressed: () {
              Navigator.pushNamed(context, '/third');
             },

            child: const Text('Demo Three'),
          ),
        ),
```
