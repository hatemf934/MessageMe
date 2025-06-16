import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/chat_home_item.dart';
import 'package:flutter/material.dart';

class ChatHomeItemList extends StatefulWidget {
  const ChatHomeItemList({super.key, required this.usersData});
  final List<DataModel> usersData;

  @override
  State<ChatHomeItemList> createState() => _ChatHomeItemListState();
}

class _ChatHomeItemListState extends State<ChatHomeItemList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.usersData.length,
        itemBuilder: (context, index) {
          return ChatHomeItem(
            data: widget.usersData[index],
            onPressed: () {
              widget.usersData.removeAt(index);
              setState(() {});
            },
          );
        });
  }
}
