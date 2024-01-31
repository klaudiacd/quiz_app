import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'European Capitals Quiz',
      theme: ThemeData(
        primaryColor: Colors.purple,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.purple,
        brightness: Brightness.dark,
      ),
      home: WelcomeScreen(),
    );
  }
}
