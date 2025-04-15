import 'package:chat_group/view/chatview.dart';
import 'package:chat_group/view/homeview.dart';
import 'package:chat_group/view/loginview.dart';
import 'package:chat_group/view/regesterview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MessageMe());
}

class MessageMe extends StatelessWidget {
  const MessageMe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homeview.id,
      routes: {
        Homeview.id: (context) => const Homeview(),
        Loginview.id: (context) => const Loginview(),
        Regesterview.id: (context) => const Regesterview(),
        Chatview.id: (context) => const Chatview(),
      },
    );
  }
}
