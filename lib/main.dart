import 'package:flutter/material.dart';
import 'package:iamin/home/home_page.dart';
import 'package:iamin/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemeData,
      home: const HomePage(),
    );
  }
}
