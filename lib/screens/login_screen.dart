import 'package:erozgaar/screens/homefeed_screen.dart';
import 'package:erozgaar/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/identity.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                IdentityLogo(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.68,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(
                      children: [
                        Text(
                          'Candidate Portal',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0Xff3FBC46)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Color(0xff303F4A),
                            ),
                            fillColor: const Color(0xffF8F9FA),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffe4e7eb),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffe4e7eb),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock_open,
                              color: Color(0xff323F4B),
                            ),
                            suffixIcon: const Icon(
                              Icons.visibility_off_outlined,
                              color: Color(0xff323F4B),
                            ),
                            fillColor: Color(0xffF8F9FA),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffe4e7eb),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe4e7eb),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5, top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Password?',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        ButtonWidget(
                          height: 0.06,
                          width: 0.9,
                          color: const Color(0Xff3FBC46),
                          title: 'LOGIN',
                          onClick: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeFeedScreen(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              ),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0Xff3FBC46),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
