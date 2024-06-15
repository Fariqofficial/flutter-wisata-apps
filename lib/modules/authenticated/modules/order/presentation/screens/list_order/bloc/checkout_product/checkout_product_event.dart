part of 'checkout_product_bloc.dart';

@freezed
class CheckoutProductEvent with _$CheckoutProductEvent {
  const factory CheckoutProductEvent.started() = _Started;
  //Add Checkout Product
  const factory CheckoutProductEvent.addCheckout(Product product) =
      _AddCheckout;
  //Remove Checkout Product
  const factory CheckoutProductEvent.removeCheckout(Product product) =
      _RemoveCheckout;
}
