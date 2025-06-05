import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/text_validate_manager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/textfield_custom.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFieldValidate extends StatelessWidget {
  const CustomTextFieldValidate({
    super.key,
    required this.onEmailChanged,
    required this.onPasswordChanged,
  });
  final Function(String) onEmailChanged;
  final Function(String) onPasswordChanged;

  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp = RegExp(TextValidateManager.emailRegExp);
    final RegExp passwordLeastLowerCaseLetter =
        RegExp(TextValidateManager.passwordLeastLowerCaseLetter);
    final RegExp passwordLeastDigit =
        RegExp(TextValidateManager.passwordLeastDigit);
    final RegExp passwordLeastOneCharacter =
        RegExp(TextValidateManager.passwordLeastOneCharacter);
    final RegExp passwordLeastEightNumber =
        RegExp(TextValidateManager.passwordLeastEightNumber);
    return Column(
      children: [
        TextFormFieldCustom(
          validator: (value) {
            if (value!.isEmpty) {
              return TextValidateManager.fieldIsRequired;
            } else if (!emailRegExp.hasMatch(value)) {
              return TextValidateManager.validEmailAddress;
            }
            return null;
          },
          onchange: onEmailChanged,
          colorenable: kSecondryColor,
          colorfocus: kPrimaryColor,
          hintlabel: Textmanager.kEnterEmail,
        ),
        SizedBox(height: Hightmanager.h16),
        TextFormFieldCustom(
          validator: (value) {
            if (value!.isEmpty) {
              return TextValidateManager.fieldIsRequired;
            } else if (!passwordLeastLowerCaseLetter.hasMatch(value)) {
              return TextValidateManager.passwordFromAtoZ;
            } else if (!passwordLeastOneCharacter.hasMatch(value)) {
              return TextValidateManager.passwordSpicailCharacter;
            } else if (!passwordLeastDigit.hasMatch(value)) {
              return TextValidateManager.passwordLeastNumber;
            } else if (!passwordLeastEightNumber.hasMatch(value)) {
              return TextValidateManager.passwordLeastAt8Number;
            }
            return null;
          },
          onchange: onPasswordChanged,
          colorenable: kSecondryColor,
          colorfocus: kPrimaryColor,
          obscureText: true,
          hintlabel: Textmanager.kEnterPassword,
        ),
      ],
    );
  }
}
