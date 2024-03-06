part of 'authn_bloc.dart';

/// Base event class, do not use, instead derived like below, know that State n-n Event
sealed class AuthnEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class LoginRequested extends AuthnEvent {}

// illustrate of firing another evt
final class AnotherLoginRequest extends AuthnEvent {}
