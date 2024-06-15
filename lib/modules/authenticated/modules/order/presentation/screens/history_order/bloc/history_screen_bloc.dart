import 'package:bloc/bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/data/datasource/product/product_remote_dts_impl.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_screen_event.dart';
part 'history_screen_state.dart';
part 'history_screen_bloc.freezed.dart';

class HistoryScreenBloc extends Bloc<HistoryScreenEvent, HistoryScreenState> {
  final ProductRemoteDTSImpl _productRemoteDTSImpl;
  HistoryScreenBloc(this._productRemoteDTSImpl) : super(const _Initial()) {
    on<HistoryScreenEvent>((event, emit) async {
      emit(const _Loading());
      final histories = await _productRemoteDTSImpl.getAllOrders();
      emit(_Success(histories));
    });
  }
}
