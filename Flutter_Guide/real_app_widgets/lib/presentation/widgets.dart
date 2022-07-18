import 'package:flutter/material.dart';

class CadrWidget extends StatelessWidget {
  final String text;
  const CadrWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
