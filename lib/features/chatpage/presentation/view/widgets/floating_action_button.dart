import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/chatpage/presentation/view/adding_chat_view.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: Paddingmanager.p8, bottom: Paddingmanager.p23),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Borderradiues.bo48),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              )
            ]),
        height: Hightmanager.h70,
        width: Widthmanager.w70,
        child: FloatingActionButton(
          splashColor: kPrimaryColor,
          backgroundColor: kPrimaryColor,
          onPressed: () {
            Navigator.pushNamed(context, AddingChatView.id);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Borderradiues.bo48),
          ),
          child: Icon(
            Icons.mark_unread_chat_alt,
            color: kSecondryColor,
            size: Fontsizemanager.font30,
          ),
        ),
      ),
    );
  }
}
