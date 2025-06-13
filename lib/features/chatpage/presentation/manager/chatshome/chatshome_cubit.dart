import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'chatshome_state.dart';

class ChatshomeCubit extends Cubit<ChatshomeState> {
  ChatshomeCubit() : super(ChatshomeInitial());
}
