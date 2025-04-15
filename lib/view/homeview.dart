import 'package:chat_group/view/loginview.dart';
import 'package:chat_group/view/regesterview.dart';
import 'package:chat_group/widget/button_custom.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  static String id = "homeview";
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
            const Text(
              "MessageMe",
              style: TextStyle(fontSize: 50, color: Color(0xff3b3d60)),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonCustom(
              color: Colors.orange,
              onpressed: () {
                Navigator.pushNamed(context, Loginview.id);
              },
              textbuttom: "LOGIN",
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonCustom(
              color: Colors.blue,
              onpressed: () {
                Navigator.pushNamed(context, Regesterview.id);
              },
              textbuttom: "REGESTER",
            ),
          ],
        ),
      ),
    );
  }
}
