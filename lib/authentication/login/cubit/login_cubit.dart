import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:onboarding_flutter/authentication/repository/user_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final UserRepository userRepository;

  LoginCubit(this.userRepository) : super(LoginState.initial());

  void usernameChanged(String username) {
    print("UserChanged: $username");
    emit(state.copyWith(
      username: username,
      isValidUsername: username.isNotEmpty,
    ));
  }

  void passwordChanged(String password) {
    print("PasswordChanged: $password");
    emit(
      state.copyWith(
          password: password,
          isValidPassword: password.isNotEmpty && password.length >= 6),
    );
  }

  void auth(){
    emit(state.copyWith(loading: true));
  }

  void login() {
    print("Login");

    emit(state.copyWith(loading: true));

/*    final ok = await userRepository.login(
        username: state.username, password: state.password);
    if (ok) {
      emit(state.copyWith(isSuccess: true, loading: false));
    } else {
      emit(state.copyWith(isFailed: true, loading: false));
    }*/
  }
}
