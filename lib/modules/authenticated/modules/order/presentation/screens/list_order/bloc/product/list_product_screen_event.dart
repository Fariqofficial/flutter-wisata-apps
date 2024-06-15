part of 'list_product_screen_bloc.dart';

@freezed
class ListProductScreenEvent with _$ListProductScreenEvent {
  const factory ListProductScreenEvent.started() = _Started;
  const factory ListProductScreenEvent.getProducts() = _GetProducts;
  //Sync Product From Server to Local Storage
  const factory ListProductScreenEvent.syncProducts() = _SyncProducts;
  //Get Product From Local Storage
  const factory ListProductScreenEvent.getProductsFromLocal() =
      _GetProductsFromLocal;
}
