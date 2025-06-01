import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryCodePickerCustom extends StatelessWidget {
  const CountryCodePickerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      showFlag: true,
      showCountryOnly: false,
      dialogBackgroundColor: kPrimaryColor,
      barrierColor: Colorsmanager.kblackOpacity,
      initialSelection: kinitialSelection,
      favorite: favoritelist,
      textStyle: TextStyle(color: Theme.of(context).primaryColor),
      closeIcon: Icon(Icons.close, color: Colorsmanager.kwhite),
      searchDecoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: Textmanager.ksearchCountry,
          hintStyle: TextStyle(
              color: Colorsmanager.kwhite, fontSize: Fontsizemanager.font15),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: Paddingmanager.p20),
            child: Icon(Icons.search, color: Colorsmanager.kwhite),
          )),
      searchStyle: TextStyle(
          color: Colorsmanager.kwhite, fontSize: Fontsizemanager.font15),
      dialogTextStyle: TextStyle(color: Colorsmanager.kwhite),
      headerTextStyle: TextStyle(
          color: Colorsmanager.kwhite, fontSize: Fontsizemanager.font20),
      padding: EdgeInsets.only(bottom: Paddingmanager.p8),
      emptySearchBuilder: (context) {
        return Center(
          child: Text(Textmanager.kNoCountryFound,
              style: TextStyle(color: Colorsmanager.kwhite)),
        );
      },
    );
  }
}
