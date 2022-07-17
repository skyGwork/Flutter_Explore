// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../models/drawer.dart';

class StarterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?',
      'What\'s your favorite animarl?',
    ];
    return Material(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Starter App'),
        ),
        body: Material(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('The question!'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Answer 1'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Answer 2'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Answer 3'),
                )
              ],
            ),
          ),
        ),
        drawer: AppDrawer(),
      ),
    );
  }
}
