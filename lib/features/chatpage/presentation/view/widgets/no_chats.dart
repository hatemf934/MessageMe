import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class NoChats extends StatelessWidget {
  const NoChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AssetsManager.knochats,
            height: Hightmanager.h230,
          ),
          SizedBox(height: Hightmanager.h16),
          Text(
            Textmanager.kNoChats,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: Fontsizemanager.font24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
