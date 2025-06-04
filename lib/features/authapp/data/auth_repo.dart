import 'package:chat_group/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  // Email & Password Authentication
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserCredential>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  // Social Authentication
  Future<Either<Failure, UserCredential>> signInWithGoogle();
  Future<Either<Failure, UserCredential>> signInWithFacebook();

  // Other Auth Operations
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, void>> sendPasswordResetEmail(String email);
}
