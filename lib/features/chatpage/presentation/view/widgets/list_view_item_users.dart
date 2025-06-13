import 'package:chat_group/core/widget/custom_aswesome_dialog.dart';
import 'package:chat_group/features/authapp/presentation/manager/datauserscubit/datausers_cubit.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/users_chat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewItemUsers extends StatelessWidget {
  const ListViewItemUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatausersCubit, DatausersState>(
      builder: (context, state) {
        if (state is DatausersSucsses) {
          final data = state.data;
          return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return UsersChatItem(data: data[index]);
              });
        } else if (state is DatausersFailure) {
          CustomAswesomeDialog().AwesomeDialogError(
              context: context, description: state.errmessage);
        }
        return Container();
      },
    );
  }
}
