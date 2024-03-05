import 'dart:async';

import 'package:flutter_project006/authn/models/user_data.dart';

const timeDelayed = Duration(milliseconds: 3000);

class SimpleRepo {
  Future<UserData> login() => Future.delayed(
        timeDelayed,
        () => const UserData(
          userId: 200,
          username: 'Lmao',
          userPwd: 'LMFAO',
        ),
      );
}
