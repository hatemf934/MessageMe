import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/textmanager_account.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void showLogutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: kPrimaryColor,
      title: Text(TextmanagerAccount.kLagout,
          style: TextStyle(color: Colorsmanager.kwhite)),
      content: Text(TextmanagerAccount.kAreyousure,
          style: TextStyle(color: Colorsmanager.kwhite)),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(TextmanagerAccount.kCancel,
                style: TextStyle(color: Colorsmanager.kwhite))),
        TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            child: Text(TextmanagerAccount.kLagout,
                style: TextStyle(color: Colorsmanager.kred))),
      ],
    ),
  );
}
