part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class RegisterEvent extends AuthEvent {
  String name;
  String email;
  String password;
  String password_confirm;
  String phone_number;

  RegisterEvent(
      {required this.name,
      required this.email,
      required this.password,
      required this.password_confirm,
      required this.phone_number});
}
