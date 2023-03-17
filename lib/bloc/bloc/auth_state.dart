part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class RegisterSuccess extends AuthState {}

class AuthEror extends AuthState {
  final String eror;

  AuthEror(this.eror);
}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class Authenticated extends AuthState {}

class Unauthenticated extends AuthState {}

class AuthenticatedError extends AuthState {
  String error;
  AuthenticatedError({
    required this.error,
  });
}

class AuthenticatedLoading extends AuthState {}
