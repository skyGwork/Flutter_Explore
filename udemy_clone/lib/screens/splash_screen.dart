import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'landign_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
              child: LandingPage(),
              type: PageTransitionType.rightToLeft,
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
        color: Colors.white,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/img/sellogo.png',
                height: 100,
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: RichText(
                      text: TextSpan(
                        text: 's',
                        style: TextStyle(
                          fontFamily: GoogleFonts.yesevaOne().fontFamily,
                          // fontFamily: 'yeseva',
                          fontSize: 30,
                          color: Colors.blue[900],
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'kyi',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          TextSpan(
                            text: 'n',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.normal,
                              letterSpacing: .75,
                              color: Colors.red,
                              shadows: [
                                Shadow(
                                  color: Colors.blue,
                                  offset: Offset(2, 1),
                                  blurRadius: 0,
                                )
                              ],
                            ),
                          ),
                          TextSpan(
                            text: 'k',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        //  EdgeInsets.all(40),
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 75),
                    child: Text('Expressive Learning',
                        style: TextStyle(
                          color: const Color(0xFF000915),
                          fontFamily: GoogleFonts.comfortaa().fontFamily,
                          fontSize: 16,
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const CircularProgressIndicator(
                color: Color(0xFF7408F8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
