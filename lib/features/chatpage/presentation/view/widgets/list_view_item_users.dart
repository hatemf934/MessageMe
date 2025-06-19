import 'package:chat_group/constant.dart';
import 'package:chat_group/core/widget/custom_aswesome_dialog.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/authapp/presentation/manager/datauserscubit/datausers_cubit.dart';
import 'package:chat_group/features/chatpage/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/no_result_found.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/users_chat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewItemUsers extends StatelessWidget {
  const ListViewItemUsers({super.key});

  List<DataModel> _filterUsers(List<DataModel> users, String searchQuery) {
    if (searchQuery.isEmpty) {
      return users;
    }

    return users.where((user) {
      return user.name.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubitCubit, SearchCubitState>(
      builder: (context, searchState) {
        return BlocBuilder<DatausersCubit, DatausersState>(
          builder: (context, dataState) {
            if (dataState is DatausersSucsses) {
              final allUsers = dataState.data;
              String searchQuery = '';
              if (searchState is SearchResults) {
                searchQuery = searchState.searchQuery;
              }

              final filteredUsers = _filterUsers(allUsers, searchQuery);
              if (filteredUsers.isEmpty) {
                return const NoSearchFound();
              }

              return ListView.builder(
                itemCount: filteredUsers.length,
                itemBuilder: (context, index) {
                  return UsersChatItem(data: filteredUsers[index]);
                },
              );
            } else if (dataState is DatausersFailure) {
              CustomAswesomeDialog().AwesomeDialogError(
                context: context,
                description: dataState.errmessage,
              );
              return Container();
            }

            // Loading state
            return const Center(
              child: CircularProgressIndicator(
                color: kPrimaryColor,
              ),
            );
          },
        );
      },
    );
  }
}
