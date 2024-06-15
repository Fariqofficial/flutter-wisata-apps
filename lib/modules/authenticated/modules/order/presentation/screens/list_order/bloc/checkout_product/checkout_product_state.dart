part of 'checkout_product_bloc.dart';

@freezed
class CheckoutProductState with _$CheckoutProductState {
  const factory CheckoutProductState.initial() = _Initial;
  const factory CheckoutProductState.loading() = _Loading;
  const factory CheckoutProductState.success(List<OrderItem> products) =
      _Success;
  const factory CheckoutProductState.error(String message) = _Error;
}
