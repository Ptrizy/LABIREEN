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
