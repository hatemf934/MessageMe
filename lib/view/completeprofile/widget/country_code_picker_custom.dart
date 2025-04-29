import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
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
      barrierColor: Colors.black.withOpacity(0.5),
      initialSelection: "eg",
      favorite: ['+966', 'eg'],
      textStyle: TextStyle(color: Theme.of(context).primaryColor),
      closeIcon: Icon(Icons.close, color: Colorsmanager.kwhite),
      searchDecoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: "Search a country...",
          hintStyle: TextStyle(
              color: Colorsmanager.kwhite, fontSize: Fontsizemanager.font15),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search, color: Colorsmanager.kwhite),
          )),
      searchStyle: TextStyle(
          color: Colorsmanager.kwhite, fontSize: Fontsizemanager.font15),
      dialogTextStyle: TextStyle(color: Colorsmanager.kwhite),
      headerTextStyle: TextStyle(
          color: Colorsmanager.kwhite, fontSize: Fontsizemanager.font20),
      padding: const EdgeInsets.only(bottom: 8),
      emptySearchBuilder: (context) {
        return Center(
          child: Text("No country found",
              style: TextStyle(color: Colorsmanager.kwhite)),
        );
      },
    );
  }
}
