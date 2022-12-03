import 'package:erozgaar/screens/document_screen.dart';
import 'package:erozgaar/screens/courses_screen.dart';
import 'package:erozgaar/screens/home_screen.dart';
import 'package:erozgaar/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFeedScreen extends StatefulWidget {
  @override
  _HomeFeedScreenState createState() => _HomeFeedScreenState();
}

class _HomeFeedScreenState extends State<HomeFeedScreen> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index

  final List<Widget> screens = [

  const HomeScreen()

  ]; // to store nested tabs

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: currentTab == 0 ? Color(0Xff3FBC46) : Colors.grey[300],
        child: const Icon(Icons.home, color: Colors.white),
        onPressed: () {
          setState(() {
            currentScreen = HomeScreen();
            currentTab = 0;
          },);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MaterialButton(
                    //minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            CourseScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.app_registration,
                          color: currentTab == 1 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                        ),
                        Text(
                          'Courses',
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 1 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    //minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                        const DocumentScreen(); // if user taps on this Voucher tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          CupertinoIcons.barcode_viewfinder,
                          color: currentTab == 2 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                        ),
                        Text(
                          'Documents',
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 2 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    //minWidth: 20,
                    onPressed: () {
                      setState(() {
                        // currentScreen =
                        // const Location(); // if user taps on this Location tab will be active
                        // currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_on_sharp,
                          color: currentTab == 3 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 3 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    //minWidth: 20,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                        const ProfileScreen(); // if user taps on this Profile tab will be active
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 4 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 4 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
