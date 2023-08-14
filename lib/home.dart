import 'package:flutter/material.dart';

import 'Screens/Career.dart';
import 'Screens/Live.dart';
import 'Screens/Settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _HomeState createState() => _HomeState();

  int CurrentTab = 0;

  final List<Widget> screens = [const Career(), const Live(), const Settings()];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const Career();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[900],
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: (Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const Career();
                    CurrentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: CurrentTab == 0 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      'Career',
                      style: TextStyle(
                          color: CurrentTab == 0 ? Colors.red : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const Live();
                    CurrentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: CurrentTab == 1 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      'Live',
                      style: TextStyle(
                          color: CurrentTab == 1 ? Colors.red : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const Settings();
                    CurrentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings,
                      color: CurrentTab == 3 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                          color: CurrentTab == 3 ? Colors.red : Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
