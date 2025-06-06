import 'package:chat_group/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class FirestoreRepo {
  // User Info Operations
  Future<Either<Failure, void>> sendUserInfo({
    required String name,
    required String phone,
    required String country,
    required String image,
    required String gender,
    required String date,
  });

  Future<Either<Failure, Map<String, dynamic>>> getUserInfo();
}
