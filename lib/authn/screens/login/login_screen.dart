import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_project006/authn/index.dart';

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
      body: BlocBuilder<AuthnBloc, AuthnState>(
        builder: (context, state) {
          return Column(
            children: [
              const Text('Hello, this is a Login Screen.'),
              ElevatedButton(
                child: const Text('Go to the other screen'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
              ),
              const Text(
                  'This button fast to simulate default initialization of the state...'),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('Click this button after the above'),
                onPressed: () {
                  // context.read<AuthnBloc>().add(LoginRequested());
                  context.read<AuthnBloc>().add(AnotherLoginRequest());
                  Navigator.of(context).pushNamed('/');
                },
              ),
              const Text(
                  'Click this button later to show that UI will be changed based on state, aka based on evts triggered from bloc...'),
            ],
          );
        },
      ),
    );
  }
}
