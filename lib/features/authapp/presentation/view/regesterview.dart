import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/custom_aswesome_dialog.dart';
import 'package:chat_group/features/authapp/data/repo/auth_service.dart';
import 'package:chat_group/features/authapp/presentation/manager/signupcubit/signup_cubit.dart';
import 'package:chat_group/features/authapp/presentation/view/complete_profile.dart';
import 'package:chat_group/core/widget/button_custom.dart';
import 'package:chat_group/core/widget/custom_google_button.dart';
import 'package:chat_group/core/widget/ordivider.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_text_field_validate.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/section_already_have_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: must_be_immutable
class Regesterview extends StatelessWidget {
  Regesterview({super.key});
  static String id = RouteManager.kResgesterview;
  String? email, password;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSucsses) {
          Navigator.pushReplacementNamed(context, CompleteProfile.id,
              arguments: email);
        } else if (state is SignupFailure) {
          CustomAswesomeDialog().AwesomeDialogError(
            context: context,
            description: state.errmessage,
          );
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: ModalProgressHUD(
            inAsyncCall: state is SignupLoading,
            child: Scaffold(
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
                      CustomTextFieldValidate(
                        onEmailChanged: (value) => email = value,
                        onPasswordChanged: (value) => password = value,
                      ),
                      SizedBox(height: Hightmanager.h20),
                      const SectionAlreadyHaveAccount(),
                      const OrDivider(),
                      SizedBox(height: Hightmanager.h20),
                      const CustomGoogleButoon(),
                      SizedBox(height: Hightmanager.h20),
                      ButtonCustom(
                        colortext: kSecondryColor,
                        color: kPrimaryColor,
                        onpressed: () async {
                          if (formkey.currentState!.validate()) {
                            if (email!.isNotEmpty && password!.isNotEmpty) {
                              AuthSevices()
                                  .regester(context, email!, password!);
                            }
                          }
                        },
                        textbuttom: Textmanager.kcontinue,
                      ),
                      SizedBox(height: Hightmanager.h70),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
