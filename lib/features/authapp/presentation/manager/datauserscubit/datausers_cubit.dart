import 'package:bloc/bloc.dart';
import 'package:chat_group/features/authapp/data/repo/firestore_repo.dart';
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
    emit(DatausersLoading());
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
}
