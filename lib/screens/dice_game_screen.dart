import 'package:flutter/material.dart';

class DiceGameScreen extends StatefulWidget {
  const DiceGameScreen({super.key});

  @override
  State<DiceGameScreen> createState() => _DiceGameScreenState();
}

class _DiceGameScreenState extends State<DiceGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Center(
          child: Image.asset("assets/images/dice-1.png", width: 200),
        ));
  }
}
