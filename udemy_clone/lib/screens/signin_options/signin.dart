import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/services/authentication.dart';

import 'signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Authentication authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'Welcome to'.toUpperCase(),
                    style: const TextStyle(
                        fontFamily: 'comfortaa',
                        letterSpacing: 3,
                        fontSize: 16),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 's',
                      style: TextStyle(
                        fontFamily: GoogleFonts.yesevaOne().fontFamily,
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
                ],
              ),
              const Image(
                image: AssetImage(
                  'assets/img/loginimgone.png',
                ),
              ),
              Text(
                'Sign In',
                style: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: () async {
                        await authentication.googleSignIn();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon((EvaIcons.google), color: Colors.red[600]),
                          const SizedBox(width: 20),
                          const Text('Sign in with Google',
                              style: TextStyle(
                                fontFamily: 'comfortaa',
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    OutlinedButton(
                      onPressed: () {},
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon((EvaIcons.facebook), color: Colors.blue[900]),
                            const SizedBox(width: 20),
                            const Text('Sign in with Facebook',
                                style: TextStyle(
                                  fontFamily: 'comfortaa',
                                ))
                          ]),
                    ),
                    const SizedBox(height: 15),
                    OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon((FontAwesomeIcons.twitter),
                              color: Colors.black54),
                          SizedBox(width: 20),
                          Text('Sign in with Twitter',
                              style: TextStyle(
                                fontFamily: 'comfortaa',
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    OutlinedButton(
                      onPressed: () {},
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon((EvaIcons.email), color: Colors.red[700]),
                            const SizedBox(width: 20),
                            const Text('Sign in with Email',
                                style: TextStyle(
                                  fontFamily: 'comfortaa',
                                ))
                          ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text('New Here?'),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const SignupPage(),
                          type: PageTransitionType.rightToLeft,
                        ));
                  },
                  child: Text('Create an account',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontFamily: 'lato',
                          fontSize: 16)),
                )
              ]),
              const SizedBox(height: 100),
            ],
          ),
        ));
  }
}
