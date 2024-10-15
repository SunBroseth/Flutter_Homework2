import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('iSHOP', style: TextStyle(color: Colors.green)),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.person, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            buildCategoryItem('Living room', Icons.family_restroom, Colors.red),
            buildCategoryItem('Desk lamp', Icons.lightbulb_outline, Colors.green),
            buildCategoryItem('Garage door', Icons.lightbulb_outline, Colors.green),
            buildCategoryItem('Kids room', Icons.child_care, Colors.blue),
            buildCategoryItem('DHT 12', Icons.lightbulb_outline, Colors.green),
            buildCategoryItem('Backyard lights', Icons.lightbulb_outline, Colors.green),
            buildCategoryItem('Backyard lights', Icons.lightbulb_outline, Colors.green),
            buildCategoryItem('Backyard lights', Icons.lightbulb_outline, Colors.green),
            buildCategoryItem('Backyard lights', Icons.lightbulb_outline, Colors.green),
            buildCategoryItem('Backyard lights', Icons.lightbulb_outline, Colors.green),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.devices),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Automation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }

  Widget buildCategoryItem(String title, IconData icon, Color iconColor) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text is bold now
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,  // Make the text bold
            ),
          ),
          const SizedBox(height: 10),  // Space between text and icon
          Icon(icon, size: 50, color: iconColor),
        ],
      ),
    );
  }
}
