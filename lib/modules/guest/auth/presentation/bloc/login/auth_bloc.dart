import 'package:bloc/bloc.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/data/datasource/auth_remote_dts.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/domain/models/request/login_request_model.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/domain/models/response/login_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRemoteDTS authRemoteDTS;
  AuthBloc(
    this.authRemoteDTS,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final request = LoginRequestModel(
        email: event.email,
        password: event.password,
      );

      //Get Response Use Dartz
      final response = await authRemoteDTS.login(request);
      response.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Success(data)),
      );
    });
  }
}
