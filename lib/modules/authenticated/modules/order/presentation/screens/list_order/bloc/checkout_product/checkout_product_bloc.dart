import 'package:bloc/bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_item.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_product_event.dart';
part 'checkout_product_state.dart';
part 'checkout_product_bloc.freezed.dart';

class CheckoutProductBloc
    extends Bloc<CheckoutProductEvent, CheckoutProductState> {
  CheckoutProductBloc() : super(const _Initial()) {
    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Success([]));
    });

    on<_AddCheckout>((event, emit) {
      if (state is _Success) {
        final currentState = state as _Success;
        List<OrderItem> products = [...currentState.products];
        final index = products
            .indexWhere((element) => element.product.id == event.product.id);
        if (index >= 0) {
          products[index].quantity += 1;
        } else {
          products.add(OrderItem(product: event.product, quantity: 1));
        }
        emit(const _Loading());
        emit(_Success(products));
      } else {
        emit(_Success([OrderItem(product: event.product, quantity: 1)]));
      }
    });

    on<_RemoveCheckout>((event, emit) {
      if (state is _Success) {
        final currentState = state as _Success;
        List<OrderItem> products = [...currentState.products];
        final index = products
            .indexWhere((element) => element.product.id == event.product.id);
        if (index >= 0) {
          if (products[index].quantity > 1) {
            products[index].quantity -= 1;
          } else {
            products.removeAt(index);
          }
          emit(const _Loading());
          emit(_Success(products));
        }
      }
    });
  }
}
