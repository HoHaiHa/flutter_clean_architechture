import 'package:injectable/injectable.dart';
import '../../shared/common/result.dart';
import '../entities/user_info.dart';
import '../repositories/auth_repository.dart';
import 'use_case.dart';

@injectable
class LoginUseCase extends UseCase<void, LoginParam> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Result<UserInfo>> call({required LoginParam params}) async {
    final result = await _authRepository.login(
        username: params.username,
        password: params.password,
    );
    return result;
  }
}

class LoginParam {
  LoginParam({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;
}
