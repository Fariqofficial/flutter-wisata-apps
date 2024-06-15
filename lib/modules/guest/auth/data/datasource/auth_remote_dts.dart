import 'package:dartz/dartz.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/api_constants.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/data/datasource/auth_remote_dts_impl.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/domain/models/request/login_request_model.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/domain/models/response/login_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDTS {
  //Login Function
  //Step To Use Dartz Package
  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel requestModel) async {
    final response = await http.post(
      Uri.parse("${ApiConstants.baseUrl}api/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: requestModel.toJson(),
    );

    if (response.statusCode == 200) {
      //From Get Response Using Dartz
      return Right(LoginResponseModel.fromJson(response.body));
    } else {
      //From Get Error Message Using Dartz
      return Left(response.body);
    }
  }

  //Logout Function
  Future<Either<String, String>> logout() async {
    final user = await AuthRemoteDTSImpl().getToken();
    final response = await http.post(
      Uri.parse("${ApiConstants.baseUrl}/api/logout"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${user.token}'
      },
    );

    if (response.statusCode == 200) {
      return const Right("Logout Success");
    } else {
      return Left(response.body);
    }
  }
}
