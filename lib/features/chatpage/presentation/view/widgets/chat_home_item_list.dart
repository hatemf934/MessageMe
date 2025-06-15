import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/chat_home_item.dart';
import 'package:flutter/material.dart';

class ChatHomeItemList extends StatelessWidget {
  const ChatHomeItemList({super.key, required this.usersData});
  final List<DataModel> usersData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usersData.length,
        itemBuilder: (context, index) {
          return ChatHomeItem(
            data: usersData[index],
          );
        });
  }
}
