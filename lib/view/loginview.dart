import 'package:chat_group/widget/button_custom.dart';
import 'package:chat_group/widget/textfield_custom.dart';
import 'package:flutter/material.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});
  static String id = "loginview";
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
              colorfocus: Colors.blue[800],
              colorenable: Colors.yellow[900],
              hintlabel: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormFieldCustom(
              colorfocus: Colors.blue[800],
              colorenable: Colors.yellow[900],
              obscureText: true,
              hintlabel: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonCustom(
              color: Colors.yellow[900],
              onpressed: () {},
              textbuttom: "Sign in",
            ),
          ],
        ),
      ),
    );
  }
}
