// import 'package:basics/styled_Text.dart';
import 'dart:math';
import 'package:flutter/material.dart';

// Variable Declaration
final randomizer = Random();
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  GradientContainer(
      this.color1, this.color2, this.color3, this.color4, this.color5,
      {super.key});

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    print("changing image....");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            widget.color1,
            widget.color2,
            widget.color3,
            widget.color4,
            widget.color5,
          ], begin: startAlignment, end: endAlignment),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/dice-images/dice-$currentDiceRoll.png',
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  backgroundColor: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: rollDice,
                child: Text(
                  "Roll Dice",
                  style: TextStyle(color: Colors.black45, fontSize: 28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors });
//
//   final List<Color> colors;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [
//             Color(0xff470808),
//             Color(0xff5d3f07),
//             Color(0xff4d4d0d),
//             Color(0xff1f1f51),
//             Color(0xff340d50),
//             Color(0xff380438),
//           ], begin: startAlignment, end: endAlignment),
//         ),
//         child: Center(
//           child: StyledText("Welcome to Flutter"),
//         ),
//       ),
//     );
//   }
// }
