import 'package:flutter/material.dart';
import 'package:lol_api/lol_api.dart' as RiotApi;
// TODO: Party
// TODO:

class Live extends StatefulWidget {
  const Live({Key? key}) : super(key: key);

  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
  getGameStatus() async {
    // const accountId = 'nomming';
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text("Live", style: TextStyle(color: Colors.white)),
        ));
  }
}
