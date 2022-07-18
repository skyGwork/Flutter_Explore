> **_Timer function for auto navigation_**

```dart
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
```

> **_Navigator.pushReplacement_**

```dart
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
```
