// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            // padding: EdgeInsets.all(10),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          
          Card(
              elevation: 10,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              labelText: "title".toUpperCase())),
                      TextField(
                          decoration: InputDecoration(
                              labelText: "amount".toUpperCase())),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Submit'.toUpperCase()),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
