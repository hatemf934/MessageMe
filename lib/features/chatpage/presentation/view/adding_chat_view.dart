import 'package:chat_group/core/utils/routemanger.dart';
import 'package:flutter/material.dart';

class AddingChatView extends StatelessWidget {
  const AddingChatView({super.key});
  static String id = RouteManager.kAddingChat;
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'This is the Add Chat View',
          ),
        ),
      ),
    );
  }
}
