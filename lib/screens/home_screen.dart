import 'package:erozgaar/components/courses.dart';
import 'package:erozgaar/screens/courses_screen.dart';
import 'package:flutter/material.dart';

import '../components/identity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff323F4B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 12, right: 12, bottom: 20),
                child: Column(
                  children: [
                    IdentityLogo(),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Hi, Usama!',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/images/Usama.png'),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: MediaQuery.of(context).size.width * 0.13,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(2.8),
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff323F4B),
                              ),
                              hintStyle: TextStyle(
                                color: Color(0xff323F4B),
                              ),
                              hintText: 'Search Course',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                    Row(children: [
                      Text(
                        'Courses',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Courses(
                              image: ('assets/images/Technical.jpg'),
                              title: 'Technical'),
                          Courses(
                              image: ('assets/images/content.jpg'),
                              title: 'Content Marketing'),
                          Courses(
                              image: ('assets/images/creative.jpg'),
                              title: 'Creative Design'),
                          Courses(
                              image: ('assets/images/mobileapp.jpg'),
                              title: 'Mobile App Development'),
                          Courses(
                              image: ('assets/images/design.jpg'),
                              title: 'UI/UX Design'),
                          Courses(
                              image: ('assets/images/digital-marketing.jpg'),
                              title: 'Digital Media Marketing'),
                          Courses(
                              image: ('assets/images/e-commerce.jpg'),
                              title: 'E-Commerce'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.347,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 30, right: 12, left: 12),
                  child: Column(
                    children: [
                      Text(
                        'Admission Process',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0Xff3FBC46)),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Image.asset('assets/images/admission.png'),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> CourseScreen())),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0Xffc73236),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 2),
                              ),
                              // changes position of shadow
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Apply Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
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
