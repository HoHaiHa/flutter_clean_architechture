import 'package:flutter_clean_architecture/shared/common/result.dart';

import '../entities/user_info.dart';

abstract interface class AuthRepository {
  Future<Result<UserInfo>> login(
  {required String username, required String password});

  Future<Result<bool>> isLogined();
}