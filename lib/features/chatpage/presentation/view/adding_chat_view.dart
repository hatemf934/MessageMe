import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/features/chatpage/presentation/view/chatview.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/search_text_feild.dart';
import 'package:flutter/material.dart';

class AddingChatView extends StatelessWidget {
  const AddingChatView({super.key});
  static String id = RouteManager.kAddingChat;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const Center(child: SearchTextField()),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Chatview.id);
                },
                child: Text("Add Contact")),
          ],
        ),
      )),
    );
  }
}
