import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          const Text('Hello, this is a Login Screen.'),
          ElevatedButton(
            child: const Text('Go to the other screen'),
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
          )
        ],
      ),
    );
  }
}
