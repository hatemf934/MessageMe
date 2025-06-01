import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/features/account/presentation/manager/themeapp/theme_cubit.dart';
import 'package:chat_group/features/account/presentation/manager/themeapp/theme_state.dart';
import 'package:chat_group/core/utils/textmanager_account.dart';
import 'package:chat_group/features/account/presentation/view/widgets/list_tile_custom.dart';
import 'package:chat_group/features/account/presentation/view/personal_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfListTile extends StatelessWidget {
  const ListOfListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileCustom(
          titlecolor: Theme.of(context).primaryColor,
          title: TextmanagerAccount.kPresonalinfo,
          onTap: () {
            Navigator.pushNamed(context, PersonalProfile.id);
          },
          iconDataLeading: Icons.person_outline,
          rowtrailing: Container(),
        ),
        ListTileCustom(
          titlecolor: Theme.of(context).primaryColor,
          title: TextmanagerAccount.kLanguage,
          onTap: () {},
          iconDataLeading: Icons.language_outlined,
          rowtrailing: Text('English (US)',
              style: TextStyle(
                  color: Colorsmanager.kMaingrey,
                  fontSize: Fontsizemanager.font15)),
        ),
        ListTileCustom(
          titlecolor: Theme.of(context).primaryColor,
          title: TextmanagerAccount.kDarkmode,
          onTap: () {},
          iconDataLeading: Icons.dark_mode_outlined,
          rowtrailing: BlocBuilder<ThemeCubit, Themecubitstate>(
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
        ),
        ListTileCustom(
          titlecolor: Theme.of(context).primaryColor,
          title: TextmanagerAccount.kFontsize,
          iconDataLeading: Icons.format_size,
          rowtrailing: Text('Medium',
              style: TextStyle(
                  color: Colorsmanager.kMaingrey,
                  fontSize: Fontsizemanager.font15)),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: kPrimaryColor,
                title: Text(TextmanagerAccount.kSelectfont,
                    style: TextStyle(color: Colorsmanager.kwhite)),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text(TextmanagerAccount.kSmall,
                          style: TextStyle(color: Colorsmanager.kwhite)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(TextmanagerAccount.kMedium,
                          style: TextStyle(color: Colorsmanager.kwhite)),
                      selected: true,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(TextmanagerAccount.kLarge,
                          style: TextStyle(color: Colorsmanager.kwhite)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        ListTileCustom(
          title: TextmanagerAccount.kLagout,
          iconDataLeading: Icons.logout,
          titlecolor: Colorsmanager.kred,
          rowtrailing: Container(),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: kPrimaryColor,
                title: Text(TextmanagerAccount.kLagout,
                    style: TextStyle(color: Colorsmanager.kwhite)),
                content: Text(TextmanagerAccount.kAreyousure,
                    style: TextStyle(color: Colorsmanager.kwhite)),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(TextmanagerAccount.kCancel,
                          style: TextStyle(color: Colorsmanager.kwhite))),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(TextmanagerAccount.kLagout,
                          style: TextStyle(color: Colorsmanager.kred))),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
