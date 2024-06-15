import 'package:flutter_wisata_apps/modules/guest/auth/domain/models/response/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRemoteDTSImpl {
  //Save token
  Future<void> saveToken(LoginResponseModel responseModel) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString("auth_data", responseModel.toJson());
  }

  //Remove token
  Future<void> removeToken() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove("auth_data");
  }

  //Get token user
  Future<LoginResponseModel> getToken() async {
    final pref = await SharedPreferences.getInstance();
    final data = pref.getString("auth_data");
    if (data != null) return LoginResponseModel.fromJson(data);
    throw Exception("Data Not Found");
  }

  //Check session login user
  Future<bool> isLogin() async {
    final pref = await SharedPreferences.getInstance();
    return pref.containsKey("auth_data");
  }
}
