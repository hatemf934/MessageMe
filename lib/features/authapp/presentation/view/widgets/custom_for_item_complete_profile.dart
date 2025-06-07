import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class CustomWidgetForItemCompleteProfile extends StatelessWidget {
  const CustomWidgetForItemCompleteProfile(
      {super.key,
      required this.value,
      required this.isValid,
      required this.title,
      required this.icon});
  final String value;
  final bool isValid;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Paddingmanager.p8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isValid ? kPrimaryColor : Colorsmanager.kGrey300,
            width: Widthmanager.w1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            value.isEmpty ? title : value,
            style: TextStyle(
              color: value.isEmpty
                  ? Colorsmanager.kGrey300
                  : Theme.of(context).primaryColor,
            ),
          ),
          Icon(
            icon,
            size: Fontsizemanager.font20,
            color: Colorsmanager.kGrey600,
          ),
        ],
      ),
    );
  }
}
