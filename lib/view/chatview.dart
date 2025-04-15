import 'package:chat_group/widget/appbar_chat.dart';
import 'package:flutter/material.dart';

class Chatview extends StatelessWidget {
  const Chatview({super.key});
  static String id = "chatview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const AppbarChat(),
        backgroundColor: Colors.yellow[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.yellow[900]!, width: 2))),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        hintStyle: TextStyle(color: Colors.grey[700]),
                        hintText: "Write your Message here",
                        border: InputBorder.none),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send, color: Colors.blue[800])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
