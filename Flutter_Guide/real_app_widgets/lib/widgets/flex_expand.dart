import 'package:flutter/material.dart';

class FlexExpand extends StatelessWidget {
  const FlexExpand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            // fit: FlexFit.loose,
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              height: 100,
              // width: 50,
              color: Colors.blue,
              child: const Text('Container 3(Sm)'),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              height: 100,
              // width: 50,
              color: Colors.yellowAccent,
              child: const Text('Container 2(Sm)'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              // width: 50,
              color: Colors.red,
              child: const Text('Container 1; Its a big line'),
            ),
          ),
        ],
      ),
    );
  }
}
