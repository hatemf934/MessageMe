import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class CountryField extends StatelessWidget {
  final String label;
  final String value;
  final bool isValid;
  final Function(String) onCountrySelected;
  final List<Map<String, String>> countries;

  const CountryField(
      {Key? key,
      required this.label,
      required this.value,
      required this.onCountrySelected,
      this.isValid = false,
      this.countries = listCountry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Find the selected country flag
    String selectedFlag = '';
    if (value.isNotEmpty) {
      final selectedCountry = countries.firstWhere(
        (country) => country["name"] == value,
        orElse: () => {"name": "", "flag": ""},
      );
      selectedFlag = selectedCountry["flag"] ?? '';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: Fontsizemanager.font15, color: Colorsmanager.kGrey600),
        ),
        SizedBox(height: Hightmanager.h8),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  backgroundColor: kPrimaryColor,
                  title: Text(Textmanager.kSelectCountry,
                      style: TextStyle(color: Colorsmanager.kwhite)),
                  content: SizedBox(
                    width: Widthmanager.w200,
                    height: Hightmanager.h400,
                    child: ListView.builder(
                        itemCount: countries.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              onCountrySelected(countries[index]["name"]!);
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Paddingmanager.p8),
                              child: Row(
                                children: [
                                  Text(countries[index]["flag"]!,
                                      style: TextStyle(
                                          fontSize: Fontsizemanager.font20)),
                                  SizedBox(width: Widthmanager.w10),
                                  Text(
                                    countries[index]["name"]!,
                                    style: TextStyle(
                                        color: Colorsmanager.kwhite,
                                        fontSize: Fontsizemanager.font20),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  )),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: Paddingmanager.p8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: isValid ? kPrimaryColor : Colorsmanager.kGrey300,
                    width: Widthmanager.w1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (selectedFlag.isNotEmpty)
                      Padding(
                        padding: EdgeInsets.only(right: Paddingmanager.p8),
                        child: Text(selectedFlag),
                      ),
                    Text(
                      value.isEmpty ? Textmanager.kSelectCountry : value,
                      style: TextStyle(
                        color: value.isEmpty
                            ? Colorsmanager.kGrey300
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_down, color: Colorsmanager.kGrey600),
              ],
            ),
          ),
        ),
        SizedBox(height: Hightmanager.h16),
      ],
    );
  }
}
