import 'package:chat_group/core/error/failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreFailure extends Failure {
  FirestoreFailure({required super.message, required super.statusCode});

  factory FirestoreFailure.fromFirestoreException(
      FirebaseException firestoreError) {
    switch (firestoreError.code) {
      case 'permission-denied':
        return FirestoreFailure(
          message: 'You don\'t have permission to access this data.',
          statusCode: 403,
        );
      case 'not-found':
        return FirestoreFailure(
          message: 'The requested document was not found.',
          statusCode: 404,
        );
      case 'already-exists':
        return FirestoreFailure(
          message: 'A document with this ID already exists.',
          statusCode: 409,
        );
      case 'resource-exhausted':
        return FirestoreFailure(
          message: 'Quota exceeded. Try again later.',
          statusCode: 429,
        );
      case 'failed-precondition':
        return FirestoreFailure(
          message: 'Operation rejected due to invalid state.',
          statusCode: 400,
        );
      case 'aborted':
        return FirestoreFailure(
          message: 'Operation aborted.',
          statusCode: 409,
        );
      case 'unavailable':
        return FirestoreFailure(
          message: 'Service unavailable. Check your connection.',
          statusCode: 503,
        );
      case 'data-loss':
        return FirestoreFailure(
          message: 'Data loss occurred. Contact support.',
          statusCode: 500,
        );
      case 'unauthenticated':
        return FirestoreFailure(
          message: 'User is not authenticated.',
          statusCode: 401,
        );
      case 'network-request-failed':
        return FirestoreFailure(
          message: 'Network error. Check your internet connection.',
          statusCode: 0,
        );
      default:
        return FirestoreFailure(
          message: 'Firestore operation failed: ${firestoreError.message}',
          statusCode: 400,
        );
    }
  }
}
