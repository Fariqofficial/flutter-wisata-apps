part of 'history_screen_bloc.dart';

@freezed
class HistoryScreenState with _$HistoryScreenState {
  const factory HistoryScreenState.initial() = _Initial;
  const factory HistoryScreenState.loading() = _Loading;
  const factory HistoryScreenState.success(List<OrderModel> histories) =
      _Success;
  const factory HistoryScreenState.error(String message) = _Error;
}
