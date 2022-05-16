import 'package:flutter/material.dart';
import 'package:quize_application/screens/home_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "dana"),
      home: HomeWidget(),
    );
  }
}
