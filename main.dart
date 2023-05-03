import 'package:flutter/material.dart';
import 'package:social_zone/authetication/login_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Zone',
      theme: ThemeData.dark(),
      home: LoginScreen(),
    );
  }
}

