import 'package:flutter/material.dart';
import '../components/card.dart';
import 'instructions_screen.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
              'Thank you for applying in desired course track for Erozgaar Program.',
            style: TextStyle(
              color: Color(0xff333e4c),
                fontSize: 16
            ),
            textAlign: TextAlign.start,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text(
                  'In order to complete the registration process for Erozgaar Program. Kindly complete the online test within 72 hours after '
                  'submitting Online Registration Form In case of delay your application will be rejected.',
                  style: TextStyle(
                    color: Color(0Xffc73236),
                    fontSize: 13
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Cancel',
                style: TextStyle(color: Color(0xff333e4c)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'Start Exam',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0Xff3FBC46)),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InstructionScreen()));
              },
            ),
          ],
        );
      },
    );
  }

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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        'Enroll your favourite course',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CardWidget(
                  title: 'Technical',
                  image: ('assets/images/Technical.jpg'),
                  onClick: () => _showMyDialog(),
                ),
                CardWidget(
                  title: 'Content Marketing',
                  image: ('assets/images/content.jpg'),
                  onClick: () => _showMyDialog(),
                ),
                CardWidget(
                  title: 'Creative Design',
                  image: ('assets/images/creative.jpg'),
                  onClick: () => _showMyDialog(),
                ),
                CardWidget(
                  title: 'Mobile App Development',
                  image: ('assets/images/mobileapp.jpg'),
                  onClick: () => _showMyDialog(),
                ),
                CardWidget(
                  title: 'UI/UX Design',
                  image: ('assets/images/uidesign.jpg'),
                  onClick: () => _showMyDialog(),
                ),
                CardWidget(
                  title: 'Digital Marketing',
                  image: ('assets/images/digital-marketing.jpg'),
                  onClick: () => _showMyDialog(),
                ),
                CardWidget(
                  title: 'E-Commerce',
                  image: ('assets/images/e-commerce.jpg'),
                  onClick: () => _showMyDialog(),
                ),
              ],
            ),
          ),
        ));
  }
}
