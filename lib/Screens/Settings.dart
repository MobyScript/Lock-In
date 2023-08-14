import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text("Settings", style: TextStyle(color: Colors.white)),
        ));
  }
}


//TODO: Current Account

//TODO: Sign out Button

//TODO: Theme

// TODO: