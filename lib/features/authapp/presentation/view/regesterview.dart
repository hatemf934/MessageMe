import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/text_validate_manager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/presentation/view/complete_profile.dart';
import 'package:chat_group/core/widget/button_custom.dart';
import 'package:chat_group/core/widget/custom_google_button.dart';
import 'package:chat_group/core/widget/ordivider.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/textbuttoncustom.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/textfield_custom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Regesterview extends StatelessWidget {
  Regesterview({super.key});
  static String id = RouteManager.kResgesterview;
  String? email, password;

  bool isloading = false;

  GlobalKey<FormState> formkey = GlobalKey();

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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Paddingmanager.p20),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Hightmanager.h60),
              Image.asset(AssetsManager.klogo, height: 200),
              SizedBox(height: Hightmanager.h20),
              TextFormFieldCustom(
                validator: (value) {
                  if (value!.isEmpty) {
                    return TextValidateManager.fieldIsRequired;
                  } else if (!emailRegExp.hasMatch(value)) {
                    return TextValidateManager.validEmailAddress;
                  }
                  return null;
                },
                onchange: (data) {
                  email = data;
                },
                colorenable: kSecondryColor,
                colorfocus: kPrimaryColor,
                hintlabel: Textmanager.kEnterEmail,
              ),
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
                onchange: (data) {
                  password = data;
                },
                colorenable: kSecondryColor,
                colorfocus: kPrimaryColor,
                obscureText: true,
                hintlabel: Textmanager.kEnterPassword,
              ),
              SizedBox(height: Hightmanager.h20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Textmanager.kHaveAccount,
                    style: Theme.of(context).textTheme.titleMedium!,
                  ),
                  TextbuttonCustom(
                      onPressed: () {},
                      textbutton: Textmanager.klogin,
                      colorbutton: kPrimaryColor),
                ],
              ),
              const OrDivider(),
              SizedBox(height: Hightmanager.h20),
              const CustomGoogleButoon(),
              SizedBox(height: Hightmanager.h20),
              ButtonCustom(
                colortext: kSecondryColor,
                color: kPrimaryColor,
                onpressed: () async {
                  if (formkey.currentState!.validate()) {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email!,
                      password: password!,
                    );
                    // ignore: use_build_context_synchronously
                    Navigator.pushNamed(context, CompleteProfile.id);
                  }
                },
                textbuttom: Textmanager.kcontinue,
              ),
              SizedBox(height: Hightmanager.h70),
            ],
          ),
        ),
      ),
    );
  }
}
