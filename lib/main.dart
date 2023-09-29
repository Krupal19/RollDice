import 'package:rolldice/gradient_Container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradientContainer(
        Color(0xfff9ffa1),
        Color(0xfffff060),
        Color(0xfff2db00),
        Color(0xffffd700),
        Color(0xfff0c200),
      ),
    );
  }
}
