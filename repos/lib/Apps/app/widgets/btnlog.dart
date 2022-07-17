// ignore_for_file: unnecessary_string_interpolations, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../../../router/route.dart';

class BtnLog extends StatelessWidget {
  String btn;

  BtnLog({required this.btn});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.starterApp);
        },
        child: Text(btn),
      ),
    );
  }
}
