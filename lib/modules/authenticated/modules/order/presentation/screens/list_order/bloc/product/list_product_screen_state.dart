part of 'list_product_screen_bloc.dart';

@freezed
class ListProductScreenState with _$ListProductScreenState {
  const factory ListProductScreenState.initial() = _Initial;
  const factory ListProductScreenState.loading() = _Loading;
  const factory ListProductScreenState.success(List<Product> products) =
      _Success;
  const factory ListProductScreenState.error(String message) = _Error;
}
