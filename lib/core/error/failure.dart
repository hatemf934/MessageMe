import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String message;

  final int statusCode;

  const Failure({required this.message, required this.statusCode});
}

class AuthFailure extends Failure {
  AuthFailure({required super.message, required super.statusCode});

  factory AuthFailure.fromFirebaseAuthException(
      FirebaseAuthException authError) {
    switch (authError.code) {
      case 'email-already-in-use':
        return AuthFailure(
          message: 'The email address is already in use by another account.',
          statusCode: 400,
        );
      case 'invalid-email':
        return AuthFailure(
          message: 'The email address is badly formatted.',
          statusCode: 400,
        );
      case 'operation-not-allowed':
        return AuthFailure(
          message: 'This operation is not allowed. Contact support.',
          statusCode: 403,
        );
      case 'weak-password':
        return AuthFailure(
          message: 'The password is too weak. Choose a stronger password.',
          statusCode: 400,
        );
      case 'user-disabled':
        return AuthFailure(
          message: 'This user has been disabled. Contact support.',
          statusCode: 403,
        );
      case 'user-not-found':
        return AuthFailure(
          message: 'No user found with this email address.',
          statusCode: 404,
        );
      case 'wrong-password':
        return AuthFailure(
          message: 'Wrong password. Please try again.',
          statusCode: 401,
        );
      case 'too-many-requests':
        return AuthFailure(
          message: 'Too many requests. Try again later.',
          statusCode: 429,
        );
      case 'account-exists-with-different-credential':
        return AuthFailure(
          message: 'Account exists with different credentials.',
          statusCode: 400,
        );
      case 'invalid-credential':
        return AuthFailure(
          message: 'The credential is malformed or has expired.',
          statusCode: 400,
        );
      case 'network-request-failed':
        return AuthFailure(
          message: 'Network error. Check your internet connection.',
          statusCode: 0,
        );
      default:
        return AuthFailure(
          message: 'Authentication failed: ${authError.message}',
          statusCode: 400,
        );
    }
  }

  // For social auth failures
  factory AuthFailure.fromSocialAuthError(String provider, dynamic error) {
    return AuthFailure(
      message: 'Failed to sign in with $provider: ${error.toString()}',
      statusCode: 400,
    );
  }
}
