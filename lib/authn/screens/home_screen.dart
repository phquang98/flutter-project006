import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Hello, this is a Home Screen.'),
          ElevatedButton(
            child: const Text('Go to the other screen'),
            onPressed: () {
              Navigator.of(context).pushNamed('/login');
            },
          )
        ],
      ),
    );
  }
}
