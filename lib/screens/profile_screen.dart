import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333e4c),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.034,
              ),
              Image(
                height: MediaQuery.of(context).size.height * 0.08,
                image: AssetImage('assets/images/e-rozgaar-logo.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.678,
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
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0Xff3FBC46),
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/images/Usama.png'),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        'Usama Sadiq',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.36,
                        child: ElevatedButton(
                          onPressed: () => 'Null',
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green)),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.edit),
                                SizedBox(width: 5),
                                Text('Edit Profile')
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('CNIC'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Date of birth'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Gender'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Domicile District'),

                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Email'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Mobile No'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Address'),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('33302-4001661-5'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Dec 1, 1998'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Male'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Toba Tek Singh'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('usama@gmail.com'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('0334-6994830'),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text('Kamalia, Punjab'),
                              ],
                            )
                          ],
                        ),
                      )
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
