import 'dart:math';

import 'package:flutter/material.dart';

class DiceGameScreen extends StatefulWidget {
  const DiceGameScreen({super.key});

  @override
  State<DiceGameScreen> createState() => _DiceGameScreenState();
}

class _DiceGameScreenState extends State<DiceGameScreen> {
  var currenDiceRoll = 1;
  void rollDice() {
    setState(() {
      currenDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dice Game'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset("assets/images/dice-$currenDiceRoll.png",
                  width: 200),
            ),
            TextButton(
              onPressed: rollDice,
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue
                          .withOpacity(0.8); // Custom color for pressed state
                    } else if (states.contains(MaterialState.disabled)) {
                      return Colors.grey; // Custom color for disabled state
                    }
                    return Colors.blue; // Default color for other states
                  },
                ),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    side: const BorderSide(color: Colors.blue),
                  ),
                ),
                side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(color: Colors.blue, width: 2.0),
                ),
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.blue.withOpacity(
                          0.2); // Custom overlay color for hovered state
                    }
                    return Colors.black; // No overlay color for other states
                  },
                ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ));
  }
}
