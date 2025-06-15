part of 'chatshome_cubit.dart';

sealed class ChatshomeState extends Equatable {
  const ChatshomeState();

  @override
  List<Object> get props => [];
}

final class ChatshomeInitial extends ChatshomeState {}

final class ChatshomeNoChatYet extends ChatshomeState {}

final class ChatshomeChatCome extends ChatshomeState {
  final List<DataModel> data;

  const ChatshomeChatCome({required this.data});
}

final class ChatshomeFaliure extends ChatshomeState {
  final String errmessage;
  final int statusCode;
  const ChatshomeFaliure({required this.statusCode, required this.errmessage});
}
