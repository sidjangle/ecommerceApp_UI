import 'package:ecommerceapp/Homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(primaryColor: Color(0xfffdfefe)),
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  );
  }
}

