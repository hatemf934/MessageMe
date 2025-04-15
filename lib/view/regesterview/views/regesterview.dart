import 'package:chat_group/view/chatview/views/chatview.dart';
import 'package:chat_group/widget/button_custom.dart';
import 'package:chat_group/widget/textfield_custom.dart';
import 'package:flutter/material.dart';

class Regesterview extends StatelessWidget {
  const Regesterview({super.key});
  static String id = "regesterview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormFieldCustom(
              colorenable: Colors.blue[800],
              colorfocus: Colors.yellow[900],
              hintlabel: "Enter your Email",
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormFieldCustom(
              colorenable: Colors.blue[800],
              colorfocus: Colors.yellow[900],
              obscureText: true,
              hintlabel: "Enter your Password",
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonCustom(
              color: Colors.blue[800],
              onpressed: () {
                Navigator.pushNamed(context, Chatview.id);
              },
              textbuttom: "Log in",
            ),
          ],
        ),
      ),
    );
  }
}
