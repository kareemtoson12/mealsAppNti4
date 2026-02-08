// Karim Toson || kareemtoson1@gmail.com || Sun Feb 08 2026 18:27:24

sealed class AuthStates {}

class IntialState extends AuthStates {}

class LoginLoadingState extends AuthStates {}

class LoginSuccessState extends AuthStates {}

class LoginErrorState extends AuthStates {
  final String error;

  LoginErrorState(this.error);
}

class SignUpLoadingState extends AuthStates {}

class SignUpSuccessState extends AuthStates {}

class SignUpErrorState extends AuthStates {
  final String error;

  SignUpErrorState(this.error);
}
