import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_project006/authn/models/loggin_user.dart';

part 'authn_event.dart';
part 'authn_state.dart';

class AuthnBloc extends Bloc<AuthnEvent, AuthnState> {
  AuthnBloc() : super(AuthnInitial()) {
    on<AuthnEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
