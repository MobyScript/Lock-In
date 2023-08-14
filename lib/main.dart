import "package:flutter/material.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:lockin/home.dart";
import "package:lol_api/lol_api.dart";

Future main() async {
  await dotenv.load(fileName: ".env");
  String? RiotApiKey = dotenv.env['API_KEY'];
  RiotApi.init(apiKey: RiotApiKey ?? "");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}
