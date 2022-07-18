```dart
import 'package:flutter/material.dart';
import 'package:flutter_guide/views/home_views.dart';
import 'presentation/config/theme_context_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      //EITHER  => type one
      themeMode: ThemeMode.light,
      //themeMode: ThemeMode.dark,

      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
        ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      //OR => type two from (theme_manager)
      theme: getApplicationTheme(),

      //OR => type three from (theme_context_manager)
      theme: AppTheme.lightTheme(context),
      home: const HomeViews(),
    );
  }
}
```
