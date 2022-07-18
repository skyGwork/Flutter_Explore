import 'package:flutter/material.dart';
import './views/home_views.dart';
import 'presentation/strings.dart';
import 'presentation/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.title,
      theme: getApplicationTheme(),
      home: HomeViews(),
    );
  }
}
