import 'package:flutter/material.dart';
import 'home.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      initialRoute: '/',
      routes: {'/': (context) => HomePage()},
    );
  }
}
