import 'package:erozgaar/screens/happy_screen.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

enum SingingCharacter { Swift, Java, Dart, Kotlin }

class _ExamScreenState extends State<ExamScreen> {
  SingingCharacter? _character = SingingCharacter.Dart;
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
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Qurstion: 1/30',
                            style: TextStyle(
                                color: Color(0Xffc73236),
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          ),
                          Text(
                            'Remaining Time: 00:29:30',
                            style: TextStyle(
                              color: Color(0Xffc73236),
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                      const Text('Which programming language is used to build Flutter applications?' ,style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),),
                      ListTile(
                        title: const Text('Swift'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.Swift,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Java'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.Java,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(
                              () {
                                _character = value;
                              },
                            );
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Dart'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.Dart,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(
                                  () {
                                _character = value;
                              },
                            );
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Kotlin'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.Kotlin,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(
                                  () {
                                _character = value;
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                      ButtonWidget(
                        height: 0.06,
                        width: 0.9,
                        color: const Color(0Xff3FBC46),
                        title: 'Submit Answer',
                        onClick: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HappyScreen(),
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
