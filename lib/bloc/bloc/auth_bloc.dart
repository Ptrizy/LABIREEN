import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../repository/auth_repository.dart';
import '../../repository/cache_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final authRepository = AuthRepository();
  AuthBloc() : super(AuthInitial()) {
    on<RegisterEvent>(
      (event, emit) async {
        // TODO: implement event handler

        emit(AuthLoading());
        try {
          var response = await authRepository.registerRepository(
              event.name,
              event.email,
              event.password,
              event.password_confirm);

          response
              ? emit(RegisterSuccess())
              : emit(AuthEror("Register Event Failed"));
        } catch (e) {
          emit(AuthEror(e.toString()));
        }
      },
    );

    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        var response =
            await authRepository.loginRepositiory(event.email, event.password);

        response ? emit(AuthSuccess()) : emit(AuthEror("Login Event Failed"));
      } catch (e) {
        emit(AuthEror('There is error in register event : ${e.toString()}'));
      }
    });

    on<LogoutEvent>((event, emit) async {
      try {
        await Cache.deleteData('token_user');
        emit(Unauthenticated());
      } catch (e) {
        emit(AuthenticatedError(
            error: "Error at logout event : ${e.toString()}"));
      }
    });
  }
}
