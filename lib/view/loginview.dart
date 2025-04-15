import 'package:chat_group/widget/button_custom.dart';
import 'package:flutter/material.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});
  static String id = "loginview";
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
            ButtonCustom(
              color: Colors.orange,
              onpressed: () {},
              textbuttom: "LOGIN",
            ),
          ],
        ),
      ),
    );
  }
}
