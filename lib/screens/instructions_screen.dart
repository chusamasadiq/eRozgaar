import 'package:erozgaar/screens/exam_screen.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';

class InstructionScreen extends StatelessWidget {
  const InstructionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333e4c),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.034,
              ),
              Image(
                height: MediaQuery.of(context).size.height * 0.08,
                image: const AssetImage('assets/images/e-rozgaar-logo.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.745,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/exam.png', scale: 3),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      const Text(
                        'You have 30 minutes\nto complete the Exam',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0Xff3FBC46),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      const Text(
                        'You have three chances to complete this exam.'
                        ' Please make sure your internet connection and'
                        ' electricity are backup connected.',
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      ButtonWidget(
                        height: 0.06,
                        width: 0.9,
                        color: const Color(0Xff3FBC46),
                        title: 'Start Now',
                        onClick: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExamScreen(),
                          ),
                        ),
                      ),
                    ],
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
