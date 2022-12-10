import 'package:erozgaar/components/identity.dart';
import 'package:erozgaar/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/design.dart';
import '../components/textfiled.dart';
import 'homefeed_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cnicController = TextEditingController();

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
                BottomSheetWidget(
                  height: 0.68,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(
                      children: [
                        const Text(
                          'Registration Portal',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0Xff3FBC46)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        TextFieldWidget(
                          hintText: 'CNIC',
                          preIcon: Icons.person,
                          controller: cnicController,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        TextFieldWidget(
                          hintText: 'Email',
                          preIcon: Icons.email_outlined,
                          controller: emailController,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        TextFieldWidget(
                          hintText: 'Password',
                          preIcon: Icons.lock_open,
                          controller: passwordController,
                          obscure: true,
                          postIcon: Icons.visibility_off_outlined,
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
                              'Already have an account?',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              ),
                              child: Text(
                                'Login',
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
