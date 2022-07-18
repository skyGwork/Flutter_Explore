```dart
import 'dart:async';
import 'package:flutter/material.dart';

class TimerUpdator extends ChangeNotifier {
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
