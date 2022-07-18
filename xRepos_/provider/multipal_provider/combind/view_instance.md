```dart
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

class Views extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //instance appstate
    AppStateProvider provider = Provider.of<AppStateProvider>(context);
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
                Text('name update :${provider.name}',
                    style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: (() {
                    provider.getName('SEL');
                  }),
                  child: const Text('Submit'),
                ),
              ],
            ),

            // TIMER
            Column(
              children: [
                const SizedBox(height: 20),
                Text('Timer :${provider.start}',
                    style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: (() {
                    provider.getTimer();
                  }),
                  child: const Text('start timer'),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

```
