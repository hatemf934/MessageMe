import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/account/presentation/manager/themeapp/theme_cubit.dart';
import 'package:chat_group/features/account/presentation/manager/themeapp/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RowAppBarProfile extends StatelessWidget {
  const RowAppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: Fontsizemanager.font30,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(width: Widthmanager.w20),
        Text(
          Textmanager.kProfile,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: Fontsizemanager.font20,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        BlocBuilder<ThemeCubit, Themecubitstate>(
          builder: (context, state) {
            return Switch(
                // autofocus: true,
                activeColor: kPrimaryColor,
                value: BlocProvider.of<ThemeCubit>(context).state ==
                    Themecubitstate.dark,
                onChanged: (value) {
                  BlocProvider.of<ThemeCubit>(context).tochange();
                });
          },
        ),
      ],
    );
  }
}
