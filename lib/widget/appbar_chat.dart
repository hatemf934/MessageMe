import 'package:flutter/material.dart';

class AppbarChat extends StatelessWidget {
  const AppbarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 40,
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          "MessageMe",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
