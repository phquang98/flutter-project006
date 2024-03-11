import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_project006/authn/index.dart';

/// Entrypoint
/// Put all your feats in here
/// Based on:
/// - https://github.com/felangel/bloc/blob/master/examples/flutter_shopping_cart/lib/app.dart
/// - https://github.com/Livinglist/Hacki/blob/master/lib/main.dart
class ExampleBlocApp extends StatelessWidget {
  const ExampleBlocApp({super.key, required this.simpleRepoInstance});

  final SimpleRepo simpleRepoInstance;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) {
            // verbose ver
            // final tmp = AuthnBloc(simpleRepo: simpleRepoInstance);
            // tmp.add(LoginRequested());
            // log('logging app.dart $tmp');

            // return tmp;
            return AuthnBloc(simpleRepo: simpleRepoInstance)
              ..add(LoginRequested());
          },
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Bloc Project Example',
          initialRoute: '/login',
          routes: {
            '/': (context) => const HomeScreen(),
            '/login': (context) => const LoginScreen(),
          }),
    );
  }
}
