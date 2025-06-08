import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class MessageErrorValidate extends StatelessWidget {
  const MessageErrorValidate({super.key, this.errorMessage});
  final String? errorMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Hightmanager.h5),
      child: Text(
        errorMessage ?? '',
        style: TextStyle(
          color: Colors.red,
          fontSize: Fontsizemanager.font12,
        ),
      ),
    );
  }
}
