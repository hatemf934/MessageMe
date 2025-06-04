part of 'signup_cubit.dart';

sealed class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

final class SignupInitial extends SignupState {}

final class SignupSucsses extends SignupState {
  final UserCredential userCredential;
  const SignupSucsses({required this.userCredential});
}

final class SignupFailure extends SignupState {
  final String errmessage;
  final int statusCode;
  const SignupFailure({required this.statusCode, required this.errmessage});
}

final class SignupLoading extends SignupState {}
