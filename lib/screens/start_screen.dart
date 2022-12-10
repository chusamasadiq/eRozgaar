import 'package:erozgaar/screens/login_screen.dart';
import 'package:erozgaar/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import '../components/button.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333e4c),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: MediaQuery.of(context).size.height * 0.08,
                image: const AssetImage('assets/images/e-rozgaar-logo.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              const Text(
                'Welcome to e-Rozgaar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                'Online & Onsite Learning Platform',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),

              //Login
              ButtonWidget(
                height: 0.06,
                width: 0.9,
                color: const Color(0Xff3FBC46),
                title: 'LOGIN',
               onClick: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
                  ),

              // GestureDetector(
              //   onTap: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const LoginScreen(),
              //     ),
              //   ),
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.06,
              //     width: MediaQuery.of(context).size.width * 0.9,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(25),
              //       color: const Color(0Xff3FBC46),
              //     ),
              //     child: Center(
              //       child: Text(
              //         'LOGIN',
              //         style: TextStyle(
              //             fontSize: 16,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                child: OutlinedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  ),
                  child: const Text(
                    'Create an Account',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
