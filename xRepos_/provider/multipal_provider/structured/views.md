```dart
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_explore/app_state/name_updator.dart';
import 'package:provider/provider.dart';

import 'app_state/timer.dart';

class Views extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NameUpdator nameUpdator = Provider.of<NameUpdator>(context);
    TimerUpdator timerUpdator = Provider.of<TimerUpdator>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('App-Status'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // NAME UPDATOR
            Column(
              children: [
                const SizedBox(height: 20),
                Text('name update :${nameUpdator.name}',
                    style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: (() {
                    nameUpdator.getName('SEL');
                  }),
                  child: const Text('Submit'),
                ),
              ],
            ),
            // TIMER
            Column(
              children: [
                const SizedBox(height: 20),
                Text('Timer :${timerUpdator.start}',
                    style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: (() {
                    timerUpdator.getTimer();
                  }),
                  child: const Text('start timer'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```
