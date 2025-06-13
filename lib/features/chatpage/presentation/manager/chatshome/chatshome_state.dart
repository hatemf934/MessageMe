part of 'chatshome_cubit.dart';

sealed class ChatshomeState extends Equatable {
  const ChatshomeState();

  @override
  List<Object> get props => [];
}

final class ChatshomeInitial extends ChatshomeState {}

final class ChatshomeLoading extends ChatshomeState {}

final class ChatshomeNoChatYet extends ChatshomeState {}

final class ChatshomeChatCome extends ChatshomeState {}
