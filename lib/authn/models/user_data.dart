import 'package:equatable/equatable.dart';

// all fields final -> immutable by definition
final class UserData extends Equatable {
  final int userId;
  final String username;
  final String userPwd;

  // named parameters https://stackoverflow.com/a/53874649
  // https://dart.dev/language/constructors#super-parameters
  const UserData({
    required this.userId,
    required this.username,
    required this.userPwd,
  });

  // used by Equatable to determine 2 objects are equal or not
  @override
  List<Object> get props => [userId, username, userPwd];
}
