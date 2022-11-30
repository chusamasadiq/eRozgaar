import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333e4c),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.height * 0.15,
                    image: AssetImage('assets/images/e-rozgaar-logo.png'),
                  ),
                  // Text(
                  //   'e-Rozgaar',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.02,
                  // ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: 'Email',
                  //     prefixIcon: const Icon(
                  //       Icons.email_outlined,
                  //       color: Color(0xff323F4B),
                  //     ),
                  //     fillColor: const Color(0xffF8F9FA),
                  //     filled: true,
                  //     focusedBorder: OutlineInputBorder(
                  //       borderSide: const BorderSide(
                  //         color: Color(0xffe4e7eb),
                  //       ),
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: const BorderSide(
                  //         color: Color(0xffe4e7eb),
                  //       ),
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.03,
                  // ),
                  // TextField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     hintText: 'Password',
                  //     prefixIcon: Icon(
                  //       Icons.lock_open,
                  //       color: Color(0xff323F4B),
                  //     ),
                  //     suffixIcon: const Icon(
                  //       Icons.visibility_off_outlined,
                  //       color: Color(0xff323F4B),
                  //     ),
                  //     fillColor: Color(0xffF8F9FA),
                  //     filled: true,
                  //     focusedBorder: OutlineInputBorder(
                  //       borderSide: const BorderSide(
                  //         color: Color(0xffe4e7eb),
                  //       ),
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: Color(0xffe4e7eb),
                  //       ),
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     errorBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.red),
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 20, top: 10),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: const [
                  //       Text(
                  //         'Forgot Password?',
                  //         style: TextStyle(
                  //             decoration: TextDecoration.underline, fontSize: 15),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.05,
                  // ),
                  // GestureDetector(
                  //   onTap: () => print('Usama'),
                  //   child: Container(
                  //     height: 50,
                  //     width: 300,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         color: Colors.redAccent),
                  //     child: Center(
                  //       child: Text(
                  //         'LOG IN',
                  //         style: TextStyle(fontSize: 16, color: Colors.white),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.02,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Dont have any account?',
                  //       style: TextStyle(
                  //         fontSize: 16,
                  //       ),
                  //     ),
                  //     TextButton(
                  //       onPressed: () => print('Hello'),
                  //       child: Text(
                  //         'Sign Up',
                  //         style: TextStyle(
                  //           fontSize: 16,
                  //           color: Colors.redAccent,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
