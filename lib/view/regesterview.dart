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
        padding: const EdgeInsets.all(20),
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
              hintlabel: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormFieldCustom(
              hintlabel: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonCustom(
              color: Colors.blue,
              onpressed: () {},
              textbuttom: "REGESTER",
            ),
          ],
        ),
      ),
    );
  }
}
