import 'package:flutter/material.dart';
import 'Screens/Homepage.dart';
import 'Screens/Login.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Color(0xFF27DEBF)),
      home: Homepage(),
    );
  }
}
