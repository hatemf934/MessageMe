import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/text_validate_manager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/message_error_validate.dart';
import 'package:chat_group/core/widget/showconrty.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_for_country_field.dart';
import 'package:flutter/material.dart';

class CountryField extends StatelessWidget {
  final String label;
  final String value;
  final Function(String) onCountrySelected;
  final List<Map<String, String>> countries;
  final bool showError;
  const CountryField({
    super.key,
    required this.label,
    required this.value,
    required this.onCountrySelected,
    this.countries = listCountry,
    required this.showError,
  });

  @override
  Widget build(BuildContext context) {
    selectedFlag();

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
                isValid: value.isNotEmpty,
                title: Textmanager.kSelectCountry,
                icon: Icons.keyboard_arrow_down,
                selectedFlag: selectedFlag())),
        if (showError && value.isEmpty)
          MessageErrorValidate(
            errorMessage: TextValidateManager.pleaseSelectCountry,
          ),
        SizedBox(height: Hightmanager.h16),
      ],
    );
  }

  String selectedFlag() {
    String selectedFlag = '';
    if (value.isNotEmpty) {
      final selectedCountry = countries.firstWhere(
        (country) => country["name"] == value,
        orElse: () => {"name": "", "flag": ""},
      );
      selectedFlag = selectedCountry["flag"] ?? '';
    }
    return selectedFlag;
  }
}
