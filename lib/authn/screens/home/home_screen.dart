import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_project006/authn/index.dart';

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
      body: BlocBuilder<AuthnBloc, AuthnState>(
        builder: (context, state) {
          switch (state.loginStatus) {
            case LoginStatus.initial:
              return const Center(child: CircularProgressIndicator());
            case LoginStatus.failure:
              return const Center(child: Text('Fake login failed!'));
            case LoginStatus.success:
              // simple conditional rendering
              if (state.userData.username == 'Lmao') {
                return Column(
                  children: [
                    Text(
                        'Hello, ${state.userData.username} this is a Home Screen.'),
                    ElevatedButton(
                      child: const Text('Go to the other screen'),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                    )
                  ],
                );
              }
              return const Center(child: Text('Condition not met'));
          }
        },
      ),
    );
  }
}
