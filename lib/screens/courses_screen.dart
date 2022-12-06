import 'package:flutter/material.dart';
import '../components/card.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff323F4B),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: MediaQuery.of(context).size.height * 0.08,
                        image: const AssetImage(
                            'assets/images/e-rozgaar-logo.png'),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Text('Enroll your favourite course', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                          color: Colors.white
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                CardWidget(
                  title: 'Technical',
                  image: ('assets/images/Technical.jpg'),
                ),
                CardWidget(
                  title: 'Content Marketing',
                  image: ('assets/images/content.jpg'),
                ),
                CardWidget(
                  title: 'Creative Design',
                  image: ('assets/images/creative.jpg'),
                ),
                CardWidget(
                  title: 'Mobile App Development',
                  image: ('assets/images/mobileapp.jpg'),
                ),
                CardWidget(
                  title: 'UI/UX Design',
                  image: ('assets/images/uidesign.jpg'),
                ),
                CardWidget(
                  title: 'Digital Marketing',
                  image: ('assets/images/digital-marketing.jpg'),
                ),
                CardWidget(
                  title: 'E-Commerce',
                  image: ('assets/images/e-commerce.jpg'),
                ),
                //Card(),
              ],
            ),
          ),
        ));
  }
}
