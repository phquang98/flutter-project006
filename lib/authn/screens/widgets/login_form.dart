import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_project006/authn/index.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    // use to detech bloc state changes in widgets (and later do sth with it)
    return BlocListener<AuthnBloc, AuthnState>(
      listener: (context, state) {
        log('check if $context ok...');
        log('check if $state ok...');
      },
      child: const Text('This is a Login Form.'),
    );
  }
}
