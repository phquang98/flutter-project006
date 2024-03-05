import 'dart:async';

import 'package:flutter_project006/authn/index.dart';

const timeDelayed = Duration(milliseconds: 3000);

// use dio or http to impl
// <https://github.com/Livinglist/Hacki/blob/master/lib/repositories/postable_repository.dart>
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
