import 'package:flutter_source_base/presentation/base/base_state.dart';
import 'package:flutter_source_base/presentation/base/page_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_top_state.freezed.dart';

@freezed
class HomeTopState extends BaseState with _$HomeTopState {
  const factory HomeTopState({
    @Default(PageStatus.Loaded) PageStatus pageStatus,
  }) = _HomeTopState;

  HomeTopState copyWith({required PageStatus pageStatus}) {}
}
