import 'package:flutter/material.dart';
import 'package:hired_flutter/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hired',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "DMSans"
      ),
      home: const HomeScreen(),
    );
  }
}