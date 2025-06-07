import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/showconrty.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_for_country_field.dart';
import 'package:flutter/material.dart';

class CountryField extends StatelessWidget {
  final String label;
  final String value;
  final bool isValid;
  final Function(String) onCountrySelected;
  final List<Map<String, String>> countries;

  const CountryField(
      {super.key,
      required this.label,
      required this.value,
      required this.onCountrySelected,
      this.isValid = false,
      this.countries = listCountry});

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
            onTap: () async {
              showCountrySelectionDialog(
                context: context,
                countries: countries,
                onCountrySelected: (selectedCountry) {
                  onCountrySelected(selectedCountry);
                },
              );
            },
            child: CustomForCountryField(
                value: value,
                isValid: isValid,
                title: Textmanager.kSelectCountry,
                icon: Icons.keyboard_arrow_down,
                selectedFlag: selectedFlag)),
        SizedBox(height: Hightmanager.h16),
      ],
    );
  }
}
