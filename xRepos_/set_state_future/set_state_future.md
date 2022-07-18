```dart
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

import '../models/drawer.dart';
import '../router/route.dart';

class LoginOneView extends StatefulWidget {
  const LoginOneView({Key? key}) : super(key: key);

  @override
  State<LoginOneView> createState() => _LoginOneViewState();
}

class _LoginOneViewState extends State<LoginOneView> {
  String name = '';
  bool changeBtn = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    setState(() {
      changeBtn = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, AppRoutes.homeRoute);
    setState(() {
      changeBtn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image(
                    image: AssetImage('lib/assets/img/hey.png'),
                    fit: BoxFit.cover),
                Text('Welcome $name',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                Padding(
                  padding:
                      //  EdgeInsets.all(40),
                      EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empyt ";
                          } else if (value.length < 6) {
                            return 'Password length should be atleast 6 characters';
                          }
                          return null;
                        }),
                  ]),
                ),
                InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 40,
                    // width: 100,
                    width: changeBtn ? 50 : 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        shape: changeBtn ? BoxShape.circle : BoxShape.rectangle
                        // borderRadius:
                        // BorderRadius.circular(changeBtn ? 50 : 5),
                        ),
                    child: changeBtn
                        ? Icon(Icons.done, color: Colors.white)
                        : Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: changeBtn ? 10 : 18,
                              letterSpacing: changeBtn ? 0 : 3,
                            )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}

```
