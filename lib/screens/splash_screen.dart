import 'dart:async';
import 'package:erozgaar/screens/start_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StartScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333e4c),
      body: Center(
        child: Image.asset(
          'assets/images/e-rozgaar-logo.png',
          height: MediaQuery.of(context).size.height * 0.2,
            width:  MediaQuery.of(context).size.height * 0.2,
        ),
      ),
    );
  }
}
