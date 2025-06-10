import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .95,
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          prefixIcon: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: Fontsizemanager.font30,
                color: Theme.of(context).primaryColor,
              )),
          filled: true,
          fillColor: Colorsmanager.kFillSearchColor,
          hintText: Textmanager.kSearchName,
          hintStyle: Theme.of(context).textTheme.titleSmall,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Borderradiues.bo30),
              borderSide: BorderSide.none),
        ),
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
