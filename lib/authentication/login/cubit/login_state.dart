part of 'login_cubit.dart';

@immutable
class LoginState {
  final String username;
  final bool isValidUsername;
  final String password;
  final bool isValidPassword;
  final bool loading;
  final bool isSuccess;
  final bool isFailed;

  LoginState({
    this.username,
    this.isValidUsername,
    this.password,
    this.isValidPassword,
    this.loading,
    this.isSuccess,
    this.isFailed,
  });

  factory LoginState.initial() => LoginState(
        username: '',
        isValidUsername: false,
        password: '',
        isValidPassword: false,
        loading: false,
        isSuccess: false,
        isFailed: false,
      );

  LoginState copyWith({
    String username,
    bool isValidUsername,
    String password,
    bool isValidPassword,
    bool loading,
    bool isSuccess,
    bool isFailed,
  }) =>
      LoginState(
        username: username ?? this.username,
        isValidUsername: isValidUsername ?? this.isValidUsername,
        password: password ?? this.password,
        isValidPassword: isValidPassword ?? this.isValidPassword,
        loading: loading == this.loading,
        isSuccess: isSuccess == this.isSuccess,
        isFailed: isFailed == this.isFailed,
      );
}
