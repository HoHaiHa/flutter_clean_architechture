part of 'top_bloc.dart';

@freezed
class TopState extends BaseState with _$TopState {
  const TopState({
    super.pageStatus = PageStatus.Loaded,
    super.pageErrorMessage,
  });
}