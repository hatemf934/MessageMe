import 'package:chat_group/view/homeview/widget/custom_google_button.dart';
import 'package:chat_group/view/homeview/widget/ordivider.dart';
import 'package:chat_group/view/loginview/views/loginview.dart';
import 'package:chat_group/view/regesterview/views/regesterview.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
              style: TextStyle(
                  fontSize: 50,
                  color: Color(0xff2e386b),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ButtonCustom(
              color: Colors.yellow[900],
              onpressed: () {
                Navigator.pushNamed(context, Loginview.id);
              },
              textbuttom: "Sign in",
            ),
            const SizedBox(height: 20),
            ButtonCustom(
              color: Colors.blue[800],
              onpressed: () {
                Navigator.pushNamed(context, Regesterview.id);
              },
              textbuttom: "Sign up",
            ),
            const SizedBox(height: 20),
            const OrDivider(),
            const SizedBox(height: 20),
            const CustomGoogleButoon()
          ],
        ),
      ),
    );
  }
}
