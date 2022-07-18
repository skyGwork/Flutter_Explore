```dart
import 'package:flutter/material.dart';

import '../../route/app_route.dart';
import '../widgets/first.dart';
import '../widgets/second.dart';
import '../widgets/third.dart';

class NavigationHomeViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: const Text('Navigator')),
        body: SingleChildScrollView(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FirstNav(),
                // const SizedBox(height: 50),
                SecondNav(),
                const SizedBox(height: 50),
                ThirdNav(),
                const SizedBox(height: 20),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, AppRoutes.gridViewDemo),
                      child: const Text('GridView'),
                    ),
                  ),
                ]),
                const SizedBox(height: 50),
              ]),
        ),
      ),
    );
  }
}

```
