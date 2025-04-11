import 'package:flutter/material.dart';
import './signup.dart';
import './signin.dart';
import './home.dart';
import './addnote.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remember the Location',
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpPage(),
        '/signin': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/addnote': (context) => AddNotePage(),
      },
    );
  }
}
