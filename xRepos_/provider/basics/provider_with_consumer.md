> main.dart

```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';
import 'views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppStateProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "AppStatus",
        home: Views(),
      ),
    );
  }
}

```

> views.dart

```dart
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

class Views extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('App-Status'),
      ),
      body: Center(
        //create Consumer
        child: Consumer<AppStateProvider>(
          builder: (context, providerValue, child) {
            return Column(
              children: [
                const SizedBox(height: 20),
                Text('name update :${providerValue.name}',
                    style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: (() {
                    providerValue.getName('SEL');
                  }),
                  child: const Text('Submit'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


```

> app_state.dart

```dart
import 'dart:async';
import 'package:flutter/material.dart';

class AppStateProvider extends ChangeNotifier {
  //provider with Async
  String name = 'webphin';

  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed(
      const Duration(seconds: 2),
      () => updateName(name),
    );
  }
}

```

> pubspec.yaml

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  provider: ^6.0.3
```
