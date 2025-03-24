part of 'top_bloc.dart';

@freezed
sealed class TopEvent with _$TopEvent {
  const factory TopEvent.loadData() = _LoadData;
}