import 'package:flutter/material.dart';
import 'package:first_flutter_app/components/custom_floating_icon_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        backgroundColor:
            const Color.fromARGB(255, 95, 111, 125), // Custom app bar color
        elevation: 4.0, // Elevation of the app bar
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action to perform when search icon is pressed
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Action to perform when settings icon is pressed
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
      floatingActionButton: CustomFloatingIconButton(
        customIcon: const Icon(Icons.add),
        backgroundColor: Colors.purpleAccent,
        splashColor: Colors.purple,
        onPressed: () {
          print('clicked');
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print('"+" clicked!');
      //     // Action to perform when the FAB is pressed
      //   },
      //   backgroundColor: Colors.green, // Custom FAB color
      //   tooltip: 'Add Item', // Tooltip for the FAB
      //   elevation: 8.0, // Elevation of the FAB
      //   splashColor: Colors.blue,
      //   child: const Icon(Icons.add), // Ripple color when FAB is pressed
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Action to perform when Drawer item is tapped
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Action to perform when Drawer item is tapped
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.blue, // Color of the selected item
        unselectedItemColor: Colors.grey, // Color of unselected items
        currentIndex: 0, // Index of the currently selected item
        onTap: (index) {
          // Action to perform when a BottomNavigationBarItem is tapped
        },
      ),
      backgroundColor: Colors.grey[200], // Background color of the Scaffold
      bottomSheet: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(16.0),
        child: const Text('Bottom Sheet Content'),
      ),
    );
  }
}
