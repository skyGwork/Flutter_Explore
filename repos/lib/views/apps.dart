// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Apps/app/widgets/app.dart';
import '../models/drawer.dart';

class AppViews extends StatelessWidget {
  const AppViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Refrance'),
        ),
        body: Material(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                AppFace(
                  h1: 'Fantastic bits',
                  h2: '',
                  h3: 'Marks the current sinario for the other',
                  img: 'lib/assets/img/starter.png',
                  btnText: 'Explore',
                ),
              ],
            ),
          ),
        ),
        drawer: AppDrawer());
  }
}
