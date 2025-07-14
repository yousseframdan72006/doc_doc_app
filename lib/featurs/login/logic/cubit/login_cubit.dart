import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/core/networking/api_error_model.dart';
import 'package:flutter_complete_project/core/networking/api_result.dart'
    as result;
import 'package:flutter_complete_project/featurs/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/featurs/login/data/repos/login_repo.dart';
import 'package:flutter_complete_project/featurs/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(LoginState.initial());
  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);

    switch (response) {
      case result.Success(:final data):
        emit(LoginState.success(data));
        print("dataaa${data}");
        break;
      case result.Failure(:final apiErrorModel):
        emit(LoginState.error(error: apiErrorModel.message));
        break;
    }
  }
}
