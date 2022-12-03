import 'package:erozgaar/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Erozgaar());

class Erozgaar extends StatelessWidget {
  const Erozgaar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: const SplashScreen(),
    );
  }
}
