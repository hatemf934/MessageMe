import 'package:flutter/material.dart';

class GenderDropdownField extends StatelessWidget {
  final String label;
  final String value;
  final bool isValid;
  final Function(String?) onChanged;
  final List<String> options;

  const GenderDropdownField({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.isValid = false,
    this.options = const [
      'Male',
      'Female',
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Text(
                value.isEmpty ? 'Gender' : value,
                style: TextStyle(
                  color: value.isEmpty ? Colors.grey[400] : Colors.black,
                ),
              ),
              PopupMenuButton<String>(
                icon: const Icon(Icons.keyboard_arrow_down),
                onSelected: (String result) {
                  onChanged(result);
                },
                itemBuilder: (BuildContext context) {
                  return options.map<PopupMenuItem<String>>((String item) {
                    return PopupMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList();
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
