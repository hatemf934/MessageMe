import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:dartz/dartz.dart';

abstract class FirestoreRepo {
  // User Info Operations
  Future<void> sendUserInfo({
    required String name,
    required String phone,
    required String country,
    required String image,
    required String gender,
    required String date,
    required String email,
  });
  Future<void> sendUserChat({
    required String name,
    required String image,
  });

  Future<Either<Failure, List<DataModel>>> getUserInfo();
  Future<Either<Failure, List<DataModel>>> getUserChat();
}
