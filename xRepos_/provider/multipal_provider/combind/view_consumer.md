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
      body: SingleChildScrollView(
        //get consumer
        child: Consumer<AppStateProvider>(
          builder: (context, providerValue, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // NAME UPDATOR
                Column(
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
                ),
                // TIMER
                Column(
                  children: [
                    const SizedBox(height: 20),
                    Text('Timer :${providerValue.start}',
                        style: const TextStyle(fontSize: 30)),
                    const SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: (() {
                        providerValue.getTimer();
                      }),
                      child: const Text('start timer'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}

```
