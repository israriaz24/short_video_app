import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/authentication/login.dart';
import 'features/home/homepage.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      home: const Login(),
    );
  }
}

