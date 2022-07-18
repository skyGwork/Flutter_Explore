```dart
import 'dart:async';
import 'package:flutter/material.dart';

class NameUpdator extends ChangeNotifier {
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
