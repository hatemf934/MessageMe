import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/textmanager.dart';
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
      this.countries = listCountry

      // Add more countries as needed

      })
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
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  backgroundColor: kPrimaryColor,
                  title: Text(Textmanager.kSelectCountry,
                      style: TextStyle(color: Colorsmanager.kwhite)),
                  content: SizedBox(
                    width: 200,
                    height: 400,
                    child: ListView.builder(
                        itemCount: countries.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              onCountrySelected(countries[index]["name"]!);
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Text(countries[index]["flag"]!,
                                      style: TextStyle(
                                          fontSize: Fontsizemanager.font20)),
                                  const SizedBox(width: 8),
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
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isValid ? Colors.teal : Colors.grey[300]!,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (selectedFlag.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(selectedFlag),
                      ),
                    Text(
                      value.isEmpty ? 'Select Country' : value,
                      style: TextStyle(
                        color: value.isEmpty
                            ? Colors.grey[400]
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey[600]),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
