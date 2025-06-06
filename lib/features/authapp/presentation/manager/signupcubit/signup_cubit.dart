import 'package:bloc/bloc.dart';
import 'package:chat_group/features/authapp/data/repo/auth_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SignupLoading());

    var result = await authRepo.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );

    result.fold(
      (failure) {
        emit(SignupFailure(
          statusCode: failure.statusCode,
          errmessage: failure.message,
        ));
      },
      (userCredential) {
        emit(SignupSucsses(userCredential: userCredential));
      },
    );
  }
}
