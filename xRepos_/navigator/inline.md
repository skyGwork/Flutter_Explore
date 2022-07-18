# Navigate to a new screen and back

> Go to new screen

```dart
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../route/app_route.dart';


class FirstNav extends StatelessWidget {

  //!Either =>  use route function
   void goToSecond(BuildContext ctx) {
     Navigator.of(ctx).push(MaterialPageRoute(builder: (_) => DemoViews01()));
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text('Navigate to a new screen and back'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Demo One'),

            //!EITHER => external function
            onPressed: () => goToSecond(context),


            //!OR => inside inside function
             onPressed: () {
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => DemoViews01()));
             },

            //!OR => anyName
             onPressed: () {
               Navigator.push(context,
                   MaterialPageRoute(builder: (anyName) => DemoViews01()));
             },

            //!OR => _
             onPressed: () {
               Navigator.push(
                   context, MaterialPageRoute(builder: (_) => const DemoViews01()));
             },
          ),
        ],
      ),
    );
  }
}

```

> complete route /GestureDetector

```dart
GestureDetector(
          //EITHER
          onTap: () => Navigator.pushNamed(context, AppRoutes.secondRoute),
          //OR
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return const DemoViews02();
             }));
           },
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
```

## To go back

> last page with navigatior

```dart
        Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go back!'),
            ),
          ),
```

> GestureDetector

```dart
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Center(
              child: Image.network(
                'https://picsum.photos/250?image=9',
              ),
            ),
          ),
```
