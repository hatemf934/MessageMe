import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/features/splashhome/presentation/view/homeview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void showLogutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: kPrimaryColor,
      title: Text(Textmanager.kLagout,
          style: TextStyle(color: Colorsmanager.kwhite)),
      content: Text(Textmanager.kAreyousure,
          style: TextStyle(color: Colorsmanager.kwhite)),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(Textmanager.kCancel,
                style: TextStyle(color: Colorsmanager.kwhite))),
        TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              // ignore: use_build_context_synchronously
              Navigator.pushReplacementNamed(context, Homeview.id);
            },
            child: Text(Textmanager.kLagout,
                style: TextStyle(color: Colorsmanager.kred))),
      ],
    ),
  );
}
