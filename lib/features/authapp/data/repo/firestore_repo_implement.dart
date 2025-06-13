import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/core/error/firestore_failure.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/authapp/data/repo/firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
  Future<Either<Failure, List<DataModel>>> getUserInfo() async {
    try {
      CollectionReference infoUsers =
          FirebaseFirestore.instance.collection("infousers");
      QuerySnapshot snapshot = await infoUsers.get();
      List<DataModel> data = [];
      for (var doc in snapshot.docs) {
        data.add(DataModel.fromjson(doc.data() as Map<String, dynamic>));
      }
      return right(data);
    } on FirebaseAuthException catch (e) {
      return Left(FirestoreFailure.fromFirestoreException(e));
    } catch (e) {
      return Left(FirestoreFailure(
          message: 'An unexpected error occurred', statusCode: 500));
    }
  }
}
