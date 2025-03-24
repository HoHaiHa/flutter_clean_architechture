import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';

@freezed
abstract class UserInfo with _$UserInfo {
  const factory UserInfo({
    required int id,
    required String fullName,
  }) = _UserInfo;
}