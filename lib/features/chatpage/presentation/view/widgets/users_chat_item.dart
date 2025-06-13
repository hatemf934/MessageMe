import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/chats_home.dart';
import 'package:flutter/material.dart';

class UsersChatItem extends StatelessWidget {
  const UsersChatItem({super.key, required this.data});
  final DataModel data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, ChatsHome.id);
      },
      child: Container(
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
                  data.image,
                  fit: BoxFit.cover,
                )),
            SizedBox(width: Widthmanager.w10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Hightmanager.h5),
                Text(data.id,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: Fontsizemanager.font15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
