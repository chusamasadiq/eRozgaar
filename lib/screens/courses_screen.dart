import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff333e4c),
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 12, right: 12, bottom: 20),
            child: Column(
              children: [
                Image(
                  height: MediaQuery.of(context).size.height * 0.08,
                  image: AssetImage('assets/images/e-rozgaar-logo.png'),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  color: Colors.greenAccent[100],
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green[500],
                            radius: 108,
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"),
                              //NetworkImage
                              radius: 100,
                            ), //CircleAvatar
                          ), //CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            'GeeksforGeeks',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.green[900],
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          const Text(
                            'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('Visit')
                                  ],
                                ),
                              ),
                            ),
                          ), //SizedBox
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
              ],
            ),
          ), //Card
        ),
      ),
    ); //Center;
  }
}
