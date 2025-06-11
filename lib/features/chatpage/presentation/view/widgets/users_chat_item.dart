import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class UsersChatItem extends StatelessWidget {
  const UsersChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: Paddingmanager.p15, vertical: Paddingmanager.p10),
      decoration: BoxDecoration(
        color: Colorsmanager.kTransparent,
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(Borderradiues.bo40),
              child: Image.asset(
                height: Hightmanager.h60,
                width: Widthmanager.w60,
                AssetsManager.kprofile,
                fit: BoxFit.cover,
              )),
          SizedBox(width: Widthmanager.w10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hatem Fathy',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Hightmanager.h5),
              Text('hatemf934@gmail.ccc',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: Fontsizemanager.font15)),
            ],
          ),
        ],
      ),
    );
  }
}
