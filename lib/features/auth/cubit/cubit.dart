// Karim Toson || kareemtoson1@gmail.com || Sun Feb 08 2026 18:27:29

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_10/core/data_source/firebase_data_source.dart';
import 'package:project_10/features/auth/cubit/states.dart';

class AuthCubit extends Cubit<AuthStates> {
  final FireBaseDataSource fireBaseDataSource = FireBaseDataSource();

  AuthCubit() : super(IntialState());

  void signUp(String email, String password, String name) async {
    emit(SignUpLoadingState());
    try {
      await fireBaseDataSource.signUp(email, password, name);
      emit(SignUpSuccessState());
    } catch (e) {
      emit(SignUpErrorState(e.toString()));
    }
  }

  void login(String email, String password) async {
    emit(LoginLoadingState());
    try {
      await fireBaseDataSource.login(email, password);
      emit(LoginSuccessState());
    } catch (e) {
      emit(LoginErrorState(e.toString()));
    }
  }
}
