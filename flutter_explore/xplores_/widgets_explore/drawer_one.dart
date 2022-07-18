// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../router/route.dart';

class AppDrawer extends StatelessWidget {
  final imaegUrl =
      'https://cdn2.iconfinder.com/data/icons/ecommerce-set-1-1/128/user_users_avatar_user_useri_icon-512.png';
  String title = 'webphin';
  String email = 'info@webphin.com';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.deepPurple,
        child: ListView(
          // padding: EdgeInsets.all(0),
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(title),
                accountEmail: Text(email),
                // currentAccountPicture: Image.network(
                //   imaegUrl,
                // ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imaegUrl),
                  // backgroundColor: Colors.white,
                ),
              ),
            ),
            // Home
            ListTile(
              onTap: () {
                // Navigator.pushNamed(context, AppRoutes.homeRoute);
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.blue,
              ),
              title: Text(
                'Home',
                // textScaleFactor: 1.2,
                style: TextStyle(
                    // color: Colors.white,
                    ),
              ),
            ),
            // Profile
            ListTile(
              onTap: () {
                // Navigator.pushNamed(context, AppRoutes.loginRoute);
              },
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.blue,
              ),
              title: Text(
                'Login',
                // textScaleFactor: 1.2,
                style: TextStyle(
                    // color: Colors.blue,
                    ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pushNamed(context, AppRoutes.demoRoute);
              },
              leading: Icon(
                CupertinoIcons.arrow_3_trianglepath,
                color: Colors.blue,
              ),
              title: Text(
                'Demo\'s',
                // textScaleFactor: 1.2,
                style: TextStyle(
                    // color: Colors.white,
                    ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pushNamed(context, AppRoutes.appRoute);
              },
              leading: Icon(
                CupertinoIcons.bookmark,
                color: Colors.blue,
              ),
              title: Text(
                'App\'s',
                // textScaleFactor: 1.2,
                style: TextStyle(
                    // color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
