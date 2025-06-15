import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/features/chatpage/presentation/manager/chatshome/chatshome_cubit.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/app_bar_chats.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/chat_home_item_list.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/floating_action_button.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/no_chats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatsHome extends StatefulWidget {
  const ChatsHome({super.key});
  static String id = RouteManager.kChatsHome;

  @override
  State<ChatsHome> createState() => _ChatsHomeState();
}

class _ChatsHomeState extends State<ChatsHome> {
  @override
  void initState() {
    BlocProvider.of<ChatshomeCubit>(context).getUserChat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ChatshomeCubit, ChatshomeState>(
          builder: (context, state) {
        if (state is ChatshomeChatCome) {
          final usersData = state.data;
          return ChatHomeItemList(usersData: usersData);
        } else {
          return const NoChats();
        }
      }),
      appBar: Appbarchatshome(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
