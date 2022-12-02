import 'package:erozgaar/components/courses.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff323F4B),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Image(
                height: MediaQuery.of(context).size.height * 0.08,
                image: const AssetImage('assets/images/e-rozgaar-logo.png'),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    backgroundImage: AssetImage('assets/images/Usama.png'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    // controller: searchController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'Search Course',
                        border: InputBorder.none),
                  )),
              SizedBox(height: 10),
              Row(
                children: const [
                  Text('Courses',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                  height: 170,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Courses(
                        image: ('assets/images/Technical.jpg'), title: 'Technical'),
                    Courses(
                        image: ('assets/images/content.jpg'), title: 'Content Marketing & Advertising'),
                    Courses(
                        image: ('assets/images/creative.jpg'),
                        title: 'Creative Design'),
                    Courses(
                        image: ('assets/images/mobileapp.jpg'),
                        title: 'Mobile App Development'),
                    Courses(
                        image: ('assets/images/UI-UX-Design.png'),
                        title: 'UI/UX Design'),
                    Courses(
                        image: ('assets/images/e-commerce.jpg'),
                        title: 'E-Commerce'),
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Menu',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  TextButton(onPressed: () {}, child: Text('View all'))
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/28.jpg'))),
                      height: 220,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/33.jpg'))),
                      height: 220,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
