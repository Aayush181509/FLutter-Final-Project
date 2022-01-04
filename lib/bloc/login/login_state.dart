part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {
  final String message;
  LoginLoading({required this.message});
  List<Object> get props => [message];
}

class LoginError extends LoginState {
  final String errorMessage;
  LoginError({required this.errorMessage});
}

class LoginSuccess extends LoginState {
  final UserModel? data;
  LoginSuccess({required this.data});
}

class SignedOut extends LoginState {
  final String message;
  SignedOut({required this.message});
}
