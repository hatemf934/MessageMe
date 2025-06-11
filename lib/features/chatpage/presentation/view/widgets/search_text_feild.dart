import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/features/chatpage/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextFieldContact extends StatelessWidget {
  const SearchTextFieldContact({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .95,
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          prefixIcon: IconButton(
              onPressed: () {
                BlocProvider.of<SearchCubitCubit>(context).changesearch(0);
              },
              icon: Icon(
                Icons.arrow_back,
                size: Fontsizemanager.font30,
                color: Theme.of(context).primaryColor,
              )),
          filled: true,
          fillColor: Theme.of(context).hoverColor,
          hintText: Textmanager.kSearchName,
          hintStyle: Theme.of(context).textTheme.titleSmall,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Borderradiues.bo30),
              borderSide: BorderSide.none),
        ),
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
