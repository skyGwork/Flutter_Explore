import 'package:flutter/material.dart';

import '../models/drawer.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Refrance'),
        ),
        body: Material(
          child: SingleChildScrollView(
            child: Column(
              children: const <Widget>[
                Text('welcome home dart'),
              ],
            ),
          ),
        ),
        drawer:  AppDrawer());
  }
}
