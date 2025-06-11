import 'package:chat_group/features/chatpage/presentation/view/widgets/users_chat_item.dart';
import 'package:flutter/material.dart';

class ListViewItemUsers extends StatelessWidget {
  const ListViewItemUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const UsersChatItem();
        });
  }
}
