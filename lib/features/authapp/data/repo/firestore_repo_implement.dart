import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/features/authapp/data/repo/firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class FirestoreRepoImplement implements FirestoreRepo {
  @override
  Future<void> sendUserInfo(
      {required String name,
      required String phone,
      required String country,
      required String image,
      required String gender,
      required String email,
      required String date}) async {
    CollectionReference infoUsers =
        FirebaseFirestore.instance.collection("infousers");

    await infoUsers.add({
      'name': name,
      'phone': phone,
      'cuontry': country,
      'image': image,
      'gender': gender,
      'date': date,
      'email': email,
    });
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }
}
