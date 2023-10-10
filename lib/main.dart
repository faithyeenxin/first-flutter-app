import 'package:first_flutter_app/screens/counter_screen.dart';
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
      // appBar: AppBar(
      //   title: const Text('My First App'),
      //   backgroundColor: const Color.fromARGB(255, 95, 111, 125),
      //   elevation: 4.0,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.search),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.settings),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body:
          _buildBody(), // Use a method to determine the body based on the current index
      // floatingActionButton: CustomFloatingIconButton(
      //   customIcon: const Icon(Icons.add),
      //   backgroundColor: Colors.purpleAccent,
      //   splashColor: Colors.purple,
      //   onPressed: () {
      //     print('clicked');
      //   },
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
          child: Text('Dice Game Screen'),
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


// import 'package:flutter/material.dart';
// import 'package:first_flutter_app/components/custom_floating_icon_button.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My First App'),
//         backgroundColor:
//             const Color.fromARGB(255, 95, 111, 125), // Custom app bar color
//         elevation: 4.0, // Elevation of the app bar
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {
//               // Action to perform when search icon is pressed
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.settings),
//             onPressed: () {
//               // Action to perform when settings icon is pressed
//             },
//           ),
//         ],
//       ),
//       body: const Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Hello, World!',
//             style: TextStyle(fontSize: 24),
//           ),
//           SizedBox(height: 16), // Add some space between paragraphs
//           Text(
//             'Welcome to Faith\'s first flutter application',
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       )),

//       floatingActionButton: CustomFloatingIconButton(
//         customIcon: const Icon(Icons.add),
//         backgroundColor: Colors.purpleAccent,
//         splashColor: Colors.purple,
//         onPressed: () {
//           print('clicked');
//         },
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.games_rounded),
//             label: 'Dice Game',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.numbers),
//             label: 'Add Up',
//           ),
//         ],
//         selectedItemColor: Colors.blue, // Color of the selected item
//         unselectedItemColor: Colors.grey, // Color of unselected items
//         currentIndex: 0, // Index of the currently selected item
//         onTap: (index) {
//           // Action to perform when a BottomNavigationBarItem is tapped
//         },
//       ),
//       backgroundColor: Colors.grey[200], // Background color of the Scaffold
//       // bottomSheet: Container(
//       //   width: double.infinity,
//       //   color: Colors.yellow,
//       //   padding: const EdgeInsets.all(16.0),
//       //   child: const Text('Bottom Sheet Content'),
//       // ),
//     );
//   }
// }
