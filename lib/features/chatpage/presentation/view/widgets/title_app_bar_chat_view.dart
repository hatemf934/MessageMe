import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:flutter/material.dart';

class TitleAppBarChatView extends StatelessWidget {
  const TitleAppBarChatView({super.key, required this.data});
  final DataModel data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colorsmanager.kGrey300,
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(45 / 2),
              child: Image.asset(
                data.image,
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(width: Widthmanager.w10),
        Column(
          children: [
            Text(
              data.name,
              style: TextStyle(
                color: Colorsmanager.kwhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Hightmanager.h8),
          ],
        ),
      ],
    );
  }
}
