import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:chat_group/view/accountview/core/textmanager_account.dart';
import 'package:flutter/material.dart';

class GeneralDivider extends StatelessWidget {
  const GeneralDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: Widthmanager.w10),
        Text(
          TextmanagerAccount.kGeneral,
          style: TextStyle(color: Colorsmanager.kMaingrey),
        ),
        Expanded(
          child: Divider(
            thickness: 0.3,
            color: Colorsmanager.kMaingrey,
            endIndent: Fontsizemanager.font30,
          ),
        )
      ],
    );
  }
}
