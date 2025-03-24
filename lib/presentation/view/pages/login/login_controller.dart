import 'package:flutter_source_base/app_controller.dart';
import 'package:flutter_source_base/domain/usecases/get_username_use_case.dart';
import 'package:flutter_source_base/domain/usecases/login_use_case.dart';
import 'package:flutter_source_base/presentation/base/base_controller.dart';
import 'package:flutter_source_base/presentation/base/page_status.dart';
import 'package:flutter_source_base/presentation/views/pages/login/login_state.dart';
import 'package:flutter_source_base/shared/common/error_handler.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginController extends BaseController<LoginState> {
  LoginController(
    this._appController,
    this._loginUseCase,
    this._getUsernameUseCase,
  ) : super(const LoginState());

  final AppController _appController;
  final LoginUseCase _loginUseCase;
  final GetUsernameUseCase _getUsernameUseCase;

  @override
  Future<void> initData() async {
    final result = await _getUsernameUseCase.invoke(null);
    String username = '';
    if (result.success) {
      username = result.data ?? '';
    }
    state = state.copyWith(pageStatus: PageStatus.Loaded, username: username);
  }

  void updateUsername(String username) {
    state = state.copyWith(username: username, usernameError: null);
  }

  void updatePassword(String password) {
    state = state.copyWith(password: password, passwordError: null);
  }

  Future<bool> login() async {
    _appController.showLoading();

    final param = LoginParam(
      username: state.username,
      password: state.password,
    );

    final loginResult = await _loginUseCase.invoke(param);

    if (!loginResult.success) {
      _appController.hideLoading();
      ErrorHandler.handle(loginResult.failure);
      return false;
    }

    if (loginResult.data != null) {
      _appController.setUserInfo(loginResult.data!);
    }

    _appController.hideLoading();
    return true;
  }

  @override
  LoginState createEmptyState() {
    return const LoginState();
  }
}
