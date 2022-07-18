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

  //timer functions
  int start = 0;
  void updateStart(int value) {
    start = value;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) => updateStart(timer.tick),
    );
  }
}

```
