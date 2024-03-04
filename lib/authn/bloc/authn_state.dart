part of 'authn_bloc.dart';

// if simple, extends Equatable -> use fields to reflect state's changes https://bloclibrary.dev/tutorials/flutter-infinite-list/
// if complex, sealed class -> final class https://github.com/felangel/bloc/blob/master/examples/flutter_shopping_cart/lib/cart/bloc/cart_state.dart
// this example uses simple case

// use a field for discrimination (e.g. TS discriminated unions)
enum LoginStatus { initial, success, failure }

final class AuthnState extends Equatable {
  final LoginStatus loginStatus;
  final UserData userData;
  final String errMsg;

  // named params
  const AuthnState({
    this.loginStatus = LoginStatus.initial,
    this.userData =
        const UserData(userId: 0, username: 'guest', userPwd: 'guest'),
    this.errMsg = "",
  });

  // based on copyWith https://bloclibrary.dev/tutorials/flutter-infinite-list/
  AuthnState mutate({
    LoginStatus? loginStatusHere,
    UserData? userDataHere,
    String? errMsgHere,
  }) {
    return AuthnState(
      loginStatus: loginStatusHere ?? loginStatus,
      userData: userDataHere ?? userData,
      errMsg: errMsgHere ?? errMsg,
    );
  }

  @override
  List<Object> get props => [loginStatus, userData, errMsg];
}
