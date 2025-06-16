import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/chat_home_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatHomeItemList extends StatefulWidget {
  const ChatHomeItemList({super.key, required this.usersData});
  final List<DataModel> usersData;
  @override
  State<ChatHomeItemList> createState() => _ChatHomeItemListState();
}

class _ChatHomeItemListState extends State<ChatHomeItemList> {
  Future<void> deleteChat(String documentId) async {
    await FirebaseFirestore.instance
        .collection("userchat")
        .doc(documentId)
        .delete();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.usersData.length,
        itemBuilder: (context, index) {
          return ChatHomeItem(
            data: widget.usersData[index],
            onPressed: () async {
              await deleteChat(widget.usersData[index].userId);
              widget.usersData.removeAt(index);
              setState(() {});
            },
          );
        });
  }
}
