import 'package:bloc/bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_item.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/data/datasource/auth_remote_dts_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item_products_event.dart';
part 'order_item_products_state.dart';
part 'order_item_products_bloc.freezed.dart';

class OrderItemProductsBloc
    extends Bloc<OrderItemProductsEvent, OrderItemProductsState> {
  OrderItemProductsBloc() : super(const _Success([], 0, 0, 0, '', 0, '')) {
    //Add Payment Method
    on<_AddPayment>((event, emit) async {
      emit(const _Loading());
      final data = await AuthRemoteDTSImpl().getToken();
      emit(_Success(
        event.orders,
        event.orders.fold(
            0, (previousValue, element) => previousValue + element.quantity),
        event.orders.fold(
            0,
            (previousValue, element) =>
                previousValue + (element.quantity * element.product.price!)),
        0,
        event.paymentMethod,
        data.user!.id!,
        data.user!.name!,
      ));
    });

    //Add Nominal Payment
    on<_AddNominalPayment>((event, emit) async {
      var currentState = state as _Success;
      emit(const _Loading());
      emit(_Success(
        currentState.orders,
        currentState.totalQty,
        currentState.totalPrice,
        event.nominal,
        currentState.paymentMethod,
        currentState.cashierId,
        currentState.cashierName,
      ));
    });

    on<_Started>((event, emit) async {
      emit(const _Loading());
      emit(const _Success([], 0, 0, 0, '', 0, ''));
    });
  }
}
