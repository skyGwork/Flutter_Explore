> router.dart

```dart
import 'package:flutter/material.dart';
import '../features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RoutePath.authScreen:
    //or
    //case AuthScreen.routeName:
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
```

## for route path

> Either 01-AuthScreen.dart (route/routepath)

```dart
class RoutePath{
  static const String homeRoute = "/";
  static const String authScreen = '/authscreen';
}
```

> OR 02-AuthScreen.dart

```dart
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {

  //PATH
  //static const String routeName = '/auth-screen';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
```

> Main.dart

```dart
import 'package:flutter/material.dart';

import './screens/auth_screen.dart';
import 'constants/global_variables.dart';
import 'router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( ),

      onGenerateRoute: (settings) => generateRoute(settings),

      home: Scaffold(
          appBar: AppBar(),
    );
  }
}

```

> Navigation

```dart
         Column(
            children: [
              const Text('Flutter Demo Home Page'),

              // Navigation
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, AuthScreen.routeName);
                      Navigator.pushNamed(context, RoutePath.authScreen);
                    },
                    child: const Text('Click'),
                  );
```

/
