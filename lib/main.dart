import 'package:erozgaar/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Erozgaar());


class Erozgaar extends StatelessWidget {
  const Erozgaar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
