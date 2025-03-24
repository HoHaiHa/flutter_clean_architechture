
import 'package:flutter_clean_architecture/shared/common/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'domain/entities/user_info.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(null) UserInfo? userInfo,
    @Default(false) bool isLoading,
    @Default(null) Failure? failureGetInitData,
  }) = _AppState;
}
