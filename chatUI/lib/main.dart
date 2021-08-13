import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apna Chat',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
      ),
      home: HomeScreen(),
    );
  }
}
