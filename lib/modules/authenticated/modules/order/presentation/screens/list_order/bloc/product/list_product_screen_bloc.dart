import 'package:bloc/bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/data/datasource/product/product_remote_dts.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/data/datasource/product/product_remote_dts_impl.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/product_model.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/response/lproduct_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'list_product_screen_event.dart';
part 'list_product_screen_state.dart';
part 'list_product_screen_bloc.freezed.dart';

class ListProductScreenBloc
    extends Bloc<ListProductScreenEvent, ListProductScreenState> {
  final ProductRemoteDTS _productRemoteDTS;
  final ProductRemoteDTSImpl _productRemoteDTSImpl;
  ListProductScreenBloc(this._productRemoteDTS, this._productRemoteDTSImpl)
      : super(const _Initial()) {
    List<Product> products = [];

    on<_GetProducts>((event, emit) async {
      emit(const _Loading());

      final response = await _productRemoteDTS.getProducts();
      response.fold(
        (error) => emit(_Error(error)),
        (data) => emit(
          _Success(data.data ?? []),
        ),
      );
    });

    //Syncronize Data From Server
    on<_SyncProducts>((event, emit) async {
      //Check Connection
      final List<ConnectivityResult> connectionResult =
          await Connectivity().checkConnectivity();
      if (connectionResult.contains(ConnectivityResult.none)) {
        emit(const _Error("No Internet Connection"));
      } else {
        emit(const _Loading());
        final response = await _productRemoteDTS.getProducts();
        //Before Insert Data To Local, First Do Delete Data
        _productRemoteDTSImpl.removeAllProduct();
        //Store Data From Server to Local Storage
        _productRemoteDTSImpl.insertAllProduct(
            response.getOrElse(() => ProductResponseModel(data: [])).data ??
                []);
        //Save List Product From Response
        products =
            response.getOrElse(() => ProductResponseModel(data: [])).data ?? [];
        emit(_Success(products));
      }
    });

    //Get Data Product From Local Storage
    on<_GetProductsFromLocal>((event, emit) async {
      emit(const _Loading());
      final localProductsData = await _productRemoteDTSImpl.getProducts();
      products = localProductsData;
      emit(_Success(products));
    });
  }
}
