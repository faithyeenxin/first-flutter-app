import 'package:first_flutter_app/screens/counter_screen.dart';
import 'package:first_flutter_app/screens/dice_game_screen.dart';
import 'package:first_flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Current index for the BottomNavigationBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _buildBody(), // Use a method to determine the body based on the current index
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.casino),
            label: 'Dice Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Counter',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
        },
      ),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildBody() {
    // Return different screens based on the current index
    switch (_currentIndex) {
      case 0:
        return const Center(child: HomeScreen());
      case 1:
        // Return your Dice Game screen
        return const Center(
          child: DiceGameScreen(),
        );
      case 2:
        // Return your Add Up screen
        return const Center(
          child: CounterScreen(),
        );
      default:
        return Container(); // Handle any additional cases if needed
    }
  }
}
