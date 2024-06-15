import 'package:bloc/bloc.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/data/datasource/auth_remote_dts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthRemoteDTS _authRemoteDTS;
  LogoutBloc(
    this._authRemoteDTS,
  ) : super(const _Initial()) {
    on<_Logout>((event, emit) async {
      emit(const _Loading());

      final response = await _authRemoteDTS.logout();

      response.fold(
        (error) => _Error(error),
        (data) => const _Success(),
      );
    });
  }
}
