import 'package:flutter/material.dart';

class CountryField extends StatelessWidget {
  final String label;
  final String value;
  final bool isValid;
  final Function(String) onCountrySelected;
  final List<Map<String, String>> countries;

  const CountryField({
    Key? key,
    required this.label,
    required this.value,
    required this.onCountrySelected,
    this.isValid = false,
    this.countries = const [
      {"name": "United States", "flag": "🇺🇸"},
      {"name": "United Kingdom", "flag": "🇬🇧"},
      {"name": "Canada", "flag": "🇨🇦"},
      {"name": "Australia", "flag": "🇦🇺"},
      {"name": "Egypt", "flag": "🇪🇬"},
      // Add more countries as needed
    ],
  }) : super(key: key);

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
        Container(
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
                      color: value.isEmpty ? Colors.grey[400] : Colors.black,
                    ),
                  ),
                ],
              ),
              PopupMenuButton<String>(
                icon: const Icon(Icons.keyboard_arrow_down),
                onSelected: (String result) {
                  onCountrySelected(result);
                },
                itemBuilder: (BuildContext context) {
                  return countries.map<PopupMenuItem<String>>((country) {
                    return PopupMenuItem<String>(
                      value: country["name"]!,
                      child: Row(
                        children: [
                          Text(country["flag"]!),
                          const SizedBox(width: 8),
                          Text(country["name"]!),
                        ],
                      ),
                    );
                  }).toList();
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
