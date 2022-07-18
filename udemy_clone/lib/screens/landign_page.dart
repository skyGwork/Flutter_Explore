import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'signin_options/signin.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/learning.jpg',
            width: 400,
          ),
          Text(
            'Learn Without Limitations',
            style: TextStyle(
              fontFamily: GoogleFonts.comfortaa().fontFamily,
              color: Colors.grey[900],
              fontSize: 20,
            ),
          ),
          const Text(
            'Learning is training of mind to think expressive',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {},
                child: Text('Browse',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
                    ),),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignIn(),
                          type: PageTransitionType.rightToLeft),);
                },
                child: Text('Sign in',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
                    )),
              )
            ],
          )),
    );
  }
}
