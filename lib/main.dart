import 'package:flutter/material.dart';

import 'features/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

