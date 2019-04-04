import 'package:flutter/material.dart';
import './layout/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Clone',
      theme: ThemeData(
        primaryColor: Color(0xFF075e54),
        accentColor: Color(0xFF25d366)
      ),
      home: MainClass(),
    );
  }
}

