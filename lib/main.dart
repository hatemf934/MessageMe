import 'package:chat_group/view/homeview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MessageMe());
}

class MessageMe extends StatelessWidget {
  const MessageMe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeview(),
    );
  }
}
