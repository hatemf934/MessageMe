import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

Future<void> showCountrySelectionDialog({
  required BuildContext context,
  required List<Map<String, String>> countries,
  required Function(String) onCountrySelected,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: kPrimaryColor,
      title: Text(
        Textmanager.kSelectCountry,
        style: TextStyle(color: Colorsmanager.kwhite),
      ),
      content: SizedBox(
        width: Widthmanager.w200,
        height: Hightmanager.h400,
        child: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            final country = countries[index];
            return InkWell(
              onTap: () {
                onCountrySelected(country["name"]!);
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Paddingmanager.p8),
                child: Row(
                  children: [
                    Text(
                      country["flag"]!,
                      style: TextStyle(fontSize: Fontsizemanager.font20),
                    ),
                    SizedBox(width: Widthmanager.w10),
                    Text(
                      country["name"]!,
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
