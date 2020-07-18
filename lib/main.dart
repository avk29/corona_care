import 'package:flutter/material.dart';
import 'welcome_screen.dart';

void main() => runApp(CoronaCare());

class CoronaCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
