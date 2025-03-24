import 'package:flutter_source_base/presentation/base/base_state.dart';
import 'package:flutter_source_base/presentation/base/page_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState extends BaseState with _$HomeState {
  const factory HomeState({
    @Default(PageStatus.Loaded) PageStatus pageStatus,
  }) = _HomeState;
}
