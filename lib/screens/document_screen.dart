import 'package:flutter/material.dart';

import '../components/identity.dart';

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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.034,
              ),
              IdentityLogo(),
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
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () => print('Usama'),
                        child: Row(
                          children: const [
                            Icon(Icons.upload_rounded),
                            SizedBox(width: 5),
                            Text('Upload Original CNIC (Front Side)')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () => print('Usama'),
                        child: Row(
                          children: const [
                            Icon(Icons.upload_rounded),
                            SizedBox(width: 5),
                            Text('Upload Original CNIC (Back Side)')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () => print('Usama'),
                        child: Row(
                          children: const [
                            Icon(Icons.upload_rounded),
                            SizedBox(width: 5),
                            Text('Upload Recent Degree/Certificate')
                          ],
                        ),
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
                                  MaterialStateProperty.all(Color(0Xff3FBC46))),
                          child: Text('Save')

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
