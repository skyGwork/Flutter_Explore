// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final imageURL =
      'https://repository-images.githubusercontent.com/31792824/fb7e5700-6ccc-11e9-83fe-f602e1e1a9f1';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'lib/assets/img/forest.jpg',
            fit: BoxFit.cover,
            height: 100,
          ),
          SizedBox(height: 50),
          Image(
            image: AssetImage('lib/assets/img/rose.jpg'),
            height: 200,
          ),
          SizedBox(height: 50),
          Image(
              image: NetworkImage(
                  'https://repository-images.githubusercontent.com/31792824/fb7e5700-6ccc-11e9-83fe-f602e1e1a9f1'),
              height: 200,
              width: 200),
          SizedBox(height: 50),
          Image.network(
            imageURL,
            // fit: BoxFit.cover,
            height: 250,
            width: 300,
            // alignment: Alignment.topCenter,
          ),
          Container(
              // child:
              )
        ],
      ),
    );
  }
}
