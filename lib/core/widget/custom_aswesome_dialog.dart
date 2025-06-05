import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:flutter/material.dart';

class CustomAswesomeDialog {
  // ignore: non_constant_identifier_names
  void AwesomeDialogError({
    required BuildContext context,
    required String description,
    String title = "Error",
    DialogType dialogType = DialogType.error,
    AnimType animType = AnimType.rightSlide,
    VoidCallback? btnOkOnPress,
    Color? dialogBackgroundColor,
    Color? btnOkColor,
    Color? buttonsTextColor,
    TextStyle? titleTextStyle,
    TextStyle? descTextStyle,
  }) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      title: Textmanager.kError,
      desc: description,
      btnOkOnPress: () {},
      dialogBackgroundColor: kPrimaryColor,
      titleTextStyle: TextStyle(
        fontSize: Fontsizemanager.font20,
        fontWeight: FontWeight.bold,
      ),
      descTextStyle: TextStyle(
        fontSize: Fontsizemanager.font15,
      ),
      btnOkColor: Colorsmanager.kwhite,
      buttonsTextStyle: TextStyle(color: Colorsmanager.kblack),
    ).show();
  }
}
