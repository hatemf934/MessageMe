import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/textbuttoncustom.dart';
import 'package:flutter/material.dart';

class SectionAlreadyHaveAccount extends StatelessWidget {
  const SectionAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Textmanager.kHaveAccount,
          style: Theme.of(context).textTheme.titleMedium!,
        ),
        TextbuttonCustom(
            onPressed: () {
              Navigator.pushNamed(context, RouteManager.kLoginview);
            },
            textbutton: Textmanager.klogin,
            colorbutton: kPrimaryColor),
      ],
    );
  }
}
