import 'package:bloc/bloc.dart';
import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/authapp/data/repo/firestore_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'datausers_state.dart';

class DatausersCubit extends Cubit<DatausersState> {
  DatausersCubit(this.firestoreRepo) : super(DatausersInitial());
  final FirestoreRepo firestoreRepo;
  Future<void> sendUserInfo(
      {required String name,
      required String phone,
      required String country,
      required String image,
      required String gender,
      required String email,
      required String date}) async {
    await firestoreRepo.sendUserInfo(
      name: name,
      phone: phone,
      country: country,
      image: image,
      gender: gender,
      email: email,
      date: date,
    );
  }

  Future<Either<Failure, List<DataModel>>> getUserInfo() async {
    final result = await firestoreRepo.getUserInfo();
    result.fold((failure) {
      emit(DatausersFailure(
          statusCode: failure.statusCode, errmessage: failure.message));
    }, (data) {
      emit(DatausersSucsses(data: data));
    });
    return result;
  }
}
