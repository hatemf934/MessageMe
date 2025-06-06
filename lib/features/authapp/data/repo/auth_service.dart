import 'package:chat_group/features/authapp/presentation/manager/signupcubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthSevices {
  Future<void> regester(
      BuildContext context, String email, String password) async {
    BlocProvider.of<SignupCubit>(context)
        .signUpWithEmailAndPassword(email: email, password: password);
  }
}
