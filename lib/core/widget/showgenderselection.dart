import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

Future<void> showGenderSelectionDialog({
  required BuildContext context,
  required List<String> options,
  required Function(String) onChanged,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: kPrimaryColor,
      title: Text(
        Textmanager.kSelectGender,
        style: TextStyle(color: Colorsmanager.kwhite),
      ),
      content: SizedBox(
        width: Widthmanager.w200,
        height: Hightmanager.h100,
        child: ListView.builder(
          itemCount: options.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                onChanged(options[index]);
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Paddingmanager.p10),
                child: Row(
                  children: [
                    Text(
                      options[index],
                      style: TextStyle(
                        color: Colorsmanager.kwhite,
                        fontSize: Fontsizemanager.font20,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}
