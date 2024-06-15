part of 'order_item_products_bloc.dart';

@freezed
class OrderItemProductsEvent with _$OrderItemProductsEvent {
  const factory OrderItemProductsEvent.started() = _Started;
  //Add Payment Method
  const factory OrderItemProductsEvent.addPaymentMethod(String paymentMethod, List<OrderItem> orders) = _AddPayment;
  //Add Nominal Payment
  const factory OrderItemProductsEvent.addNominalPayment(int nominal) = _AddNominalPayment;
}