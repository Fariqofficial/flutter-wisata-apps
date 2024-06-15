part of 'history_screen_bloc.dart';

@freezed
class HistoryScreenEvent with _$HistoryScreenEvent {
  const factory HistoryScreenEvent.started() = _Started;
  const factory HistoryScreenEvent.getHistories() = _GetHistories;
}