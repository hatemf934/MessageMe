import 'package:chat_group/constant.dart';
import 'package:chat_group/view/homeview/core/borderradiues.dart';
import 'package:chat_group/view/homeview/core/colorsmanager.dart';
import 'package:chat_group/view/homeview/core/fontsizemanager.dart';
import 'package:chat_group/view/homeview/core/textmanager.dart';
import 'package:chat_group/view/homeview/core/widthandhightmanager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomGoogleButoon extends StatelessWidget {
  const CustomGoogleButoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Hightmanager.h50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Borderradiues.bo10),
        gradient: LinearGradient(
          colors: [kSecondryColor, kPrimaryColor],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Textmanager.kGoogle,
            style: TextStyle(
                color: Colorsmanager.kwhite, fontSize: Fontsizemanager.font20),
          ),
          SizedBox(
            width: Widtmanager.w10,
          ),
          Icon(
            FontAwesomeIcons.google,
            color: Colorsmanager.kwhite,
          )
        ],
      ),
    );
  }
}
