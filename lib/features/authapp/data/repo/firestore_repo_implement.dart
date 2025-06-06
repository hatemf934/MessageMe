import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/core/error/firestore_failure.dart';
import 'package:chat_group/features/authapp/data/repo/firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class FirestoreRepoImplement implements FirestoreRepo {
  @override
  Future<Either<Failure, void>> sendUserInfo(
      {required String name,
      required String phone,
      required String country,
      required String image,
      required String gender,
      required String email,
      required String date}) async {
    CollectionReference infoUsers =
        FirebaseFirestore.instance.collection("infousers");
    try {
      await infoUsers.add({
        'name': name,
        'phone': phone,
        'cuontry': country,
        'image': image,
        'gender': gender,
        'date': date,
        'email': email,
      });
      return const Right(null);
    } on FirebaseException catch (e) {
      return Left(FirestoreFailure.fromFirestoreException(e));
    } catch (e) {
      return Left(FirestoreFailure(
          message: 'An unexpected error occurred', statusCode: 500));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }
}
