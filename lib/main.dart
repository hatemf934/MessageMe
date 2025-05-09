import 'package:chat_group/cubits/themecubit/theme_cubit.dart';
import 'package:chat_group/cubits/themecubit/theme_state.dart';
import 'package:chat_group/firebase_options.dart';
import 'package:chat_group/models/theme_model.dart';
import 'package:chat_group/view/accountview/view/account_view.dart';
import 'package:chat_group/view/chatview/views/chatview.dart';
import 'package:chat_group/view/completeprofile/view/complete_profile.dart';
import 'package:chat_group/view/homeview/views/homeview.dart';
import 'package:chat_group/view/loginview/views/loginview.dart';
import 'package:chat_group/view/personal_profile.dart';
import 'package:chat_group/view/profileview/view/profile_view.dart';
import 'package:chat_group/view/regesterview/views/regesterview.dart';
import 'package:chat_group/view/startchat_view.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MessageMe());
}

class MessageMe extends StatelessWidget {
  const MessageMe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, Themecubitstate>(
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: Homeview.id,
              routes: {
                Homeview.id: (context) => const Homeview(),
                Loginview.id: (context) => const Loginview(),
                Regesterview.id: (context) => const Regesterview(),
                Chatview.id: (context) => const Chatview(),
                CompleteProfile.id: (context) => const CompleteProfile(),
                StartchatView.id: (context) => const StartchatView(),
                AccountView.id: (context) => const AccountView(),
                PersonalProfile.id: (context) => const PersonalProfile(),
                Profileview.id: (context) => const Profileview(),
              },
              theme: state == Themecubitstate.light
                  ? ThemeModel().lightmode
                  : ThemeModel().darkmode);
        },
      ),
    );
  }
}
