import "package:flutter/material.dart";
import "package:lockin/home.dart";
import "package:lol_api/lol_api.dart";

void main() async {
  RiotApi.init(apiKey: "RGAPI-b235f7e6-31d6-466b-9532-d707704a7f80");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}
