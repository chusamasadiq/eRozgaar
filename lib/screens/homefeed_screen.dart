import 'package:erozgaar/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFeedSceen extends StatefulWidget {
  @override
  _HomeFeedSceenState createState() => _HomeFeedSceenState();
}

class _HomeFeedSceenState extends State<HomeFeedSceen> {
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
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        // currentScreen =
                        //     Menu(); // if user taps on this dashboard tab will be active
                        // currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 1 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                        ),
                        Text(
                          'Menu',
                          style: TextStyle(
                            color: currentTab == 1 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        // currentScreen =
                        // const Voucher(); // if user taps on this Voucher tab will be active
                        // currentTab = 2;
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
                          'Voucher',
                          style: TextStyle(
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
                    minWidth: 40,
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
                          Icons.location_searching,
                          color: currentTab == 3 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            color: currentTab == 3 ? Color(0Xff3FBC46) : Color(0xff323F4B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        // currentScreen =
                        // const Profile(); // if user taps on this Profile tab will be active
                        // currentTab = 4;
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
                            color: currentTab == 4 ? Colors.orange : Color(0xff323F4B),
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
