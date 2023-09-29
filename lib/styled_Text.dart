import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
    StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 38 , color: Colors.white),
    );
  }
}
