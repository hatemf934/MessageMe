import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/features/chatpage/presentation/view/chatview.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/custom_search_contact.dart';
import 'package:flutter/material.dart';

class AddingChatView extends StatelessWidget {
  const AddingChatView({super.key});
  static String id = RouteManager.kAddingChat;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          const CustomSearchContact(),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Chatview.id);
              },
              child: Text("Add Contact")),
        ],
      )),
    );
  }
}
