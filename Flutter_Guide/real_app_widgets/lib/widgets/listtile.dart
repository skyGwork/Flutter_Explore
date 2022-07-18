import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            ListTile(
              title: Text('01 ListTile with  background'),
              tileColor: Color(0xFFCECEC9),
            ),
            Card(
              child: ListTile(
                title: Text('02 One-line ListTile'),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('03 One-line with leading widget'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('04 One-line with trailing widget'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('05 One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('06 One-line dense ListTile'),
                dense: true,
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('07 Two-line ListTile'),
                subtitle: Text('Here is a second line'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 72.0),
                title: Text('08 Three-line ListTile'),
                subtitle:
                    Text('A sufficiently long subtitle warrants three lines.'),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
