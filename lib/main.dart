import 'package:flutter/material.dart';
import 'page_one.dart'; // Import file PageOne.dart
// import 'page_two.dart'; // Import file PageTwo.dart
// import 'page_three.dart'; // Import file PageThree.dart

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PageOne(),
    );
  }
}
