import 'package:flutter/material.dart';

class CustomTextFieldProfil extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool isValid;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextInputType keyboardType;
  const CustomTextFieldProfil({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.isValid = false,
    this.prefixWidget,
    this.suffixWidget,
    this.keyboardType = TextInputType.text,
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
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            isDense: true,
            border: InputBorder.none,
            prefixIcon: prefixWidget,
            suffixIcon: isValid
                ? const Icon(Icons.check, color: Colors.teal)
                : suffixWidget,
          ),
        ),
        Container(
          height: 1,
          color: isValid ? Colors.teal : Colors.grey[300],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
