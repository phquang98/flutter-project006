import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_project006/app.dart';
import 'package:flutter_project006/authn/index.dart';
import 'package:flutter_project006/simple_bloc_observer.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver(); // remove if not need logging
  runApp(ExampleBlocApp(simpleRepoInstance: SimpleRepo()));
}
