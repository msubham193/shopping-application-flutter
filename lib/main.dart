// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopapp/screens/Login.dart';
import 'package:shopapp/screens/intro.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Intro());
  }
}
