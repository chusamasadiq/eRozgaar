import 'package:erozgaar/components/design.dart';
import 'package:flutter/material.dart';
import '../components/identity.dart';
import '../components/outlinebutton.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({Key? key}) : super(key: key);

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
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
              IdentityLogo(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              BottomSheetWidget(
                height: 0.678,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Column(
                    children: [
                      Text(
                        'Academic Documents',
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
                        'Upload your passport size picture',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      OutlineButton(
                        title: 'Upload Original CNIC (Front Side)',
                        onClick: () => print('hi'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      OutlineButton(
                        title: 'Upload Original CNIC (Back Side)',
                        onClick: () => print('hi'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      OutlineButton(
                        title: 'Upload Recent Degree/Certificate',
                        onClick: () => print('hi'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.36,
                        child: ElevatedButton(
                            onPressed: () => 'Null',
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0Xff3FBC46))),
                            child: Text('Save')),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
