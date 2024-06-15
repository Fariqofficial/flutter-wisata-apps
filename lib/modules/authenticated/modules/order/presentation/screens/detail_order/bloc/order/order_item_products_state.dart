part of 'order_item_products_bloc.dart';

@freezed
class OrderItemProductsState with _$OrderItemProductsState {
  const factory OrderItemProductsState.initial() = _Initial;
  const factory OrderItemProductsState.loading() = _Loading;
  const factory OrderItemProductsState.success(
      List<OrderItem> orders,
      int totalQty,
      int totalPrice,
      int nominalPayment,
      String paymentMethod,
      int cashierId,
      String cashierName) = _Success;
  const factory OrderItemProductsState.error(String message) = _Error;
}
