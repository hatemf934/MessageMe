import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            height: 1,
            color: Colors.yellow[900],
          ),
        ),
        const Text(
          " OR",
          style:
              TextStyle(color: Color(0xff2e386b), fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            height: 2,
            color: Colors.blue[800],
            endIndent: 3,
            indent: 5,
          ),
        ),
      ],
    );
  }
}
