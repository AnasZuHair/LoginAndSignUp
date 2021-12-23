import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/screens/login_scrren.dart';
// ignore: unused_import
import 'package:flutter_login_signup_ui/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login SignUp',
      home: LoginScreen(),
    );
  }
}

