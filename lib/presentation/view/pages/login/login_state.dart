import 'package:flutter_source_base/presentation/base/base_state.dart';
import 'package:flutter_source_base/presentation/base/page_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState extends BaseState with _$LoginState {
  const factory LoginState(
      {@Default(PageStatus.Loaded) PageStatus pageStatus,
      @Default('') String username,
      @Default('') String password,
      @Default(null) String? usernameError,
      @Default(null) String? passwordError}) = _LoginState;
}

extension LoginStateExtension on LoginState {
  bool get isEnableLoginButton => username.isNotEmpty && password.isNotEmpty;
}
