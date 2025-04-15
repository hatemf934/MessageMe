import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomGoogleButoon extends StatelessWidget {
  const CustomGoogleButoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Colors.blue[800]!, Colors.yellow[900]!],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Google",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            FontAwesomeIcons.google,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
