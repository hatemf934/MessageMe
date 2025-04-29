import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
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
            fontSize: Fontsizemanager.font15,
            color: Colorsmanager.kGrey600,
          ),
        ),
        SizedBox(height: Hightmanager.h8),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  backgroundColor: kPrimaryColor,
                  title: Text(Textmanager.kSelectGender,
                      style: TextStyle(color: Colorsmanager.kwhite)),
                  content: SizedBox(
                    width: Widthmanager.w200,
                    height: Hightmanager.h100,
                    child: ListView.builder(
                        itemCount: options.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              onChanged(options[index]);
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Paddingmanager.p10),
                              child: Row(
                                children: [
                                  Text(
                                    options[index],
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
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isValid ? kPrimaryColor : Colorsmanager.kGrey300,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value.isEmpty ? Textmanager.kGender : value,
                  style: TextStyle(
                    color: value.isEmpty
                        ? Colorsmanager.kGrey300
                        : Theme.of(context).primaryColor,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey[600],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: Hightmanager.h16)
      ],
    );
  }
}
