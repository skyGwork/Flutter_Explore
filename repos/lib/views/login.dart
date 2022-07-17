import 'package:flutter/material.dart';

import '../models/drawer.dart';

class LoginViews extends StatelessWidget {
  const LoginViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Refrance'),
        ),
        body: Material(
          child: ListView(
            children: const <Widget>[Text('welcome login')],
          ),
        ),
        drawer:  AppDrawer());
  }
}
