import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/features/chatpage/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:chat_group/features/chatpage/presentation/view/chatview.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/custom_search_contact.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/list_view_item_users.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/search_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddingChatView extends StatelessWidget {
  const AddingChatView({super.key});
  static String id = RouteManager.kAddingChat;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubitCubit(),
      child: SafeArea(
        child: Scaffold(
            body: Padding(
          padding: EdgeInsets.only(top: Paddingmanager.p10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<SearchCubitCubit, SearchCubitState>(
                  builder: (context, state) {
                return AnimatedCrossFade(
                    firstCurve: Curves.easeOut,
                    secondCurve: Curves.easeIn,
                    firstChild: const Center(child: CustomSearchContact()),
                    secondChild: const Center(child: SearchTextFieldContact()),
                    crossFadeState:
                        state is SearchCubitInitial || state is SearchAppBar
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 300));
              }),
              Padding(
                padding: EdgeInsets.only(
                    right: Paddingmanager.p15,
                    left: Paddingmanager.p15,
                    top: Paddingmanager.p15),
                child: Text("Contacts on MessageMe",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: Fontsizemanager.font15)),
              ),
              const Expanded(child: ListViewItemUsers()),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Chatview.id);
                  },
                  child: Text("Add Contact")),
            ],
          ),
        )),
      ),
    );
  }
}
