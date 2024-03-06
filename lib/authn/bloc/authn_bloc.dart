import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_project006/authn/index.dart';

part 'authn_event.dart';
part 'authn_state.dart';

/// Create a SubjectBloc
/// - create the constructor + define repo & initial state data
/// - inside constructor, register with evt type and evt signature
/// - impl evt handler, state accessable inside
/// - use discriminated field to link with corresponding evts
class AuthnBloc extends Bloc<AuthnEvent, AuthnState> {
  AuthnBloc({required this.simpleRepo}) : super(const AuthnState()) {
    on<LoginRequested>(_onLoginRequested);
    on<AnotherLoginRequest>(_onAnotherLoginRequested);
  }

  final SimpleRepo simpleRepo;

  // --- Handlers ---

  // remember, we trigger events using SubjectEventType (no underscore) and Bloc use DI to map to handlers (have underscore)
  Future<void> _onLoginRequested(
    AuthnEvent evt,
    Emitter<AuthnState> emit,
  ) async {
    try {
      if (state.loginStatus == LoginStatus.initial) {
        final fetchedData = await simpleRepo.login();
        log("Empty state. Populating...");
        emit(
          state.mutate(
            loginStatusHere: LoginStatus.success,
            userDataHere: fetchedData,
            errMsgHere: '',
          ),
        );
      } else if (state.loginStatus == LoginStatus.success) {
        log("State has values. Returning...");
      }
    } catch (err) {
      emit(
        state.mutate(
          loginStatusHere: LoginStatus.failure,
          errMsgHere: 'Failed to fake fetched user data!',
        ),
      );
    }
  }

  // remember, we trigger events using SubjectEventType (no underscore) and Bloc use DI to map to handlers (have underscore)
  Future<void> _onAnotherLoginRequested(
    AuthnEvent evt,
    Emitter<AuthnState> emit,
  ) async {
    try {
      if (state.loginStatus == LoginStatus.initial) {
        final fetchedData = await simpleRepo.login();
        log("Empty state 2. Populating...");
        emit(
          state.mutate(
            loginStatusHere: LoginStatus.success,
            userDataHere: fetchedData,
            errMsgHere: '',
          ),
        );
      } else if (state.loginStatus == LoginStatus.success) {
        log("State 2 has values. Returning...");
      }
    } catch (err) {
      emit(
        state.mutate(
          loginStatusHere: LoginStatus.failure,
          errMsgHere: 'Failed to fake fetched user data 2!',
        ),
      );
    }
  }
}
