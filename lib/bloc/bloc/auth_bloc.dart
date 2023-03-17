import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final authRepository = AuthRepository();
  AuthBloc() : super(AuthInitial()) {
    on<RegisterEvent>((event, emit) async {
      // TODO: implement event handler

      emit(AuthLoading());
      try {
        print('AuthLoading on process');
        var response = await authRepository.registerRepository(
            event.name,
            event.email,
            event.password,
            event.password_confirm,
            event.phone_number);

        response
            ? emit(RegisterSuccess())
            : emit(AuthEror("Register Event Failed"));
      } catch (e) {
        emit(AuthEror(e.toString()));
      }
    },
    
    
    
    );
  }
}
