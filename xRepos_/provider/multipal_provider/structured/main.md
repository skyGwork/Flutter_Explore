```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state/name_updator.dart';
import 'app_state/timer.dart';
import 'views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NameUpdator()),
        ChangeNotifierProvider(create: (_) => TimerUpdator()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "AppStatus",
        home: Views(),
        // home: FirstPage(),
      ),
    );
  }
}
```
