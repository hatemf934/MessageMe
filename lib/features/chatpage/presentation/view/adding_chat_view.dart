import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/features/chatpage/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:chat_group/features/chatpage/presentation/view/chatview.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/custom_search_contact.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/search_text_feild.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/users_chat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddingChatView extends StatelessWidget {
  const AddingChatView({super.key});
  static String id = RouteManager.kAddingChat;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubitCubit(),
      child: SafeArea(
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              BlocBuilder<SearchCubitCubit, SearchCubitState>(
                  builder: (context, state) {
                if (state is SearchCubitInitial || state is SearchAppBar) {
                  return const CustomSearchContact();
                } else {
                  return const Center(child: SearchTextFieldContact());
                }
              }),
              UsersChatItem(),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Chatview.id);
                  },
                  child: Text("Add Contact")),
            ],
          ),
        )),
      ),
    );
  }
}
