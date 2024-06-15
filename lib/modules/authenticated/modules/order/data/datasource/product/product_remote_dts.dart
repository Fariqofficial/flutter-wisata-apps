import 'package:dartz/dartz.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/api_constants.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/response/lproduct_response_model.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/data/datasource/auth_remote_dts_impl.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDTS {
  Future<Either<String, ProductResponseModel>> getProducts() async {
    final userData = await AuthRemoteDTSImpl().getToken();
    final response = await http.get(
      Uri.parse("${ApiConstants.baseUrl}api/api-products"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${userData.token}',
      },
    );

    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }
}
