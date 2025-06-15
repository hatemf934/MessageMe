import 'package:bloc/bloc.dart';
import 'package:chat_group/core/error/failure.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/authapp/data/repo/firestore_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chatshome_state.dart';

class ChatshomeCubit extends Cubit<ChatshomeState> {
  ChatshomeCubit(this.firestoreRepo) : super(ChatshomeInitial());
  final FirestoreRepo firestoreRepo;
  Future<void> sendUserChat({
    required String name,
    required String image,
  }) async {
    await firestoreRepo.sendUserChat(name: name, image: image);
    getUserChat();
  }

  Future<Either<Failure, List<DataModel>>> getUserChat() async {
    final result = await firestoreRepo.getUserChat();
    emit(ChatshomeInitial());
    result.fold((failure) {
      emit(ChatshomeFaliure(
          statusCode: failure.statusCode, errmessage: failure.message));
    }, (data) {
      if (data.isEmpty) {
        emit(ChatshomeNoChatYet());
      } else {
        emit(ChatshomeChatCome(data: data));
      }
    });
    return result;
  }
}
