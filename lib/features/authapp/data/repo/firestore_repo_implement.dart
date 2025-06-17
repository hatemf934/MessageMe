import 'package:chat_group/constant.dart';
import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/core/error/firestore_failure.dart';
import 'package:chat_group/core/utils/textmanager.dart';
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
        FirebaseFirestore.instance.collection(kuserinfo);

    await infoUsers.add({
      'name': name,
      'phone': phone,
      'cuontry': country,
      'image': image,
      'gender': gender,
      'date': date,
      'email': email,
      "userid": FirebaseAuth.instance.currentUser!.uid,
    });
  }

  @override
  Future<void> sendUserChat(
      {required String name, required String image}) async {
    CollectionReference userChat =
        FirebaseFirestore.instance.collection(kuserchat);
    String userId = FirebaseAuth.instance.currentUser!.uid;
    QuerySnapshot existingChat = await userChat
        .where('userid', isEqualTo: userId)
        .where('name', isEqualTo: name)
        .get();
    if (existingChat.docs.isEmpty) {
      await userChat.add({
        'name': name,
        'image': image,
        'userid': userId,
      });
      await getUserChat();
    }
  }

  @override
  Future<Either<Failure, List<DataModel>>> getUserInfo() async {
    try {
      List<DataModel> data = [];
      final snapshot = await FirebaseFirestore.instance
          .collection(kuserinfo)
          .where("userid", isNotEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .get();

      data = snapshot.docs.map((doc) {
        final docData = doc.data();
        return DataModel.fromjson(docData, doc.id);
      }).toList();

      return right(data);
    } on FirebaseAuthException catch (e) {
      return Left(FirestoreFailure.fromFirestoreException(e));
    } catch (e) {
      return Left(FirestoreFailure(
          message: Textmanager.kAnErrorOccurred, statusCode: 500));
    }
  }

  @override
  Future<Either<Failure, List<DataModel>>> getUserChat() async {
    try {
      List<DataModel> data = [];
      final snapshot = await FirebaseFirestore.instance
          .collection(kuserchat)
          .where("userid", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .get();

      data = snapshot.docs.map((doc) {
        final docData = doc.data();
        return DataModel.fromjson(docData, doc.id);
      }).toList();

      return right(data);
    } on FirebaseAuthException catch (e) {
      return Left(FirestoreFailure.fromFirestoreException(e));
    } catch (e) {
      return Left(FirestoreFailure(
          message: Textmanager.kAnErrorOccurred, statusCode: 500));
    }
  }
}
