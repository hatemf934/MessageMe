import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/features/authapp/data/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImplement implements AuthRepo {
  @override
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> sendPasswordResetEmail(String email) {
    // TODO: implement sendPasswordResetEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
