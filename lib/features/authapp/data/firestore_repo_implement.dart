import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/features/authapp/data/firestore_repo.dart';
import 'package:dartz/dartz.dart';

class FirestoreRepoImplement implements FirestoreRepo {
  @override
  Future<Either<Failure, void>> sendUserInfo(
      {required String name,
      required String phone,
      required String country,
      required String image,
      required String gender,
      required String date}) {
    // TODO: implement sendUserInfo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }
}
