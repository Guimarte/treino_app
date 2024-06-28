abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginSucessState extends LoginState {}

class LoginErrorState extends LoginState {
  String error;
  LoginErrorState({required this.error});
}

class LoginLoadingState extends LoginState {}
