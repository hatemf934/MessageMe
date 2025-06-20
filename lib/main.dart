import 'package:chat_group/features/account/presentation/manager/themeapp/theme_cubit.dart';
import 'package:chat_group/features/account/presentation/manager/themeapp/theme_state.dart';
import 'package:chat_group/features/authapp/data/repo/auth_repo_implement.dart';
import 'package:chat_group/features/authapp/data/repo/firestore_repo_implement.dart';
import 'package:chat_group/features/authapp/presentation/manager/datauserscubit/datausers_cubit.dart';
import 'package:chat_group/features/authapp/presentation/manager/signupcubit/signup_cubit.dart';
import 'package:chat_group/features/chatpage/presentation/manager/chatshome/chatshome_cubit.dart';
import 'package:chat_group/features/chatpage/presentation/view/adding_chat_view.dart';
import 'package:chat_group/features/chatpage/presentation/view/chats_home.dart';
import 'package:chat_group/firebase_options.dart';
import 'package:chat_group/features/account/data/model/theme_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/chatview.dart';
import 'package:chat_group/features/authapp/presentation/view/complete_profile.dart';
import 'package:chat_group/features/splashhome/presentation/view/homeview.dart';
import 'package:chat_group/features/authapp/presentation/view/loginview.dart';
import 'package:chat_group/features/account/presentation/view/profile_view.dart';
import 'package:chat_group/features/authapp/presentation/view/regesterview.dart';
import 'package:chat_group/features/authapp/presentation/view/startchat_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

class MessageMe extends StatefulWidget {
  const MessageMe({super.key});

  @override
  State<MessageMe> createState() => _MessageMeState();
}

class _MessageMeState extends State<MessageMe> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('++++++++User is currently signed out!');
      } else {
        print('+++++++++User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(
              create: (context) => ChatshomeCubit(FirestoreRepoImplement())),
          BlocProvider(create: (context) => SignupCubit(AuthRepoImplement())),
          BlocProvider(
              create: (context) => DatausersCubit(FirestoreRepoImplement())),
        ],
        child:
            BlocBuilder<ThemeCubit, Themecubitstate>(builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: FirebaseAuth.instance.currentUser == null
                  ? Homeview.id
                  : ChatsHome.id,
              routes: {
                Homeview.id: (context) => const Homeview(),
                Loginview.id: (context) => const Loginview(),
                Regesterview.id: (context) => Regesterview(),
                Chatview.id: (context) => const Chatview(),
                CompleteProfile.id: (context) => const CompleteProfile(),
                StartchatView.id: (context) => const StartchatView(),
                Profileview.id: (context) => const Profileview(),
                ChatsHome.id: (context) => const ChatsHome(),
                AddingChatView.id: (context) => const AddingChatView(),
              },
              theme: state == Themecubitstate.light
                  ? ThemeModel().lightmode
                  : ThemeModel().darkmode);
        }));
  }
}
