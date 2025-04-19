import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/view/accountview/core/textmanager_account.dart';
import 'package:chat_group/view/accountview/widgets/list_tile_custom.dart';
import 'package:flutter/material.dart';

class ListOfListTile extends StatelessWidget {
  const ListOfListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileCustom(
          title: TextmanagerAccount.kPresonalinfo,
          onTap: () {},
          iconDataLeading: Icons.person_outline,
          rowtrailing: Container(),
        ),
        ListTileCustom(
          title: TextmanagerAccount.kLanguage,
          onTap: () {},
          iconDataLeading: Icons.language_outlined,
          rowtrailing: Text('English (US)',
              style: TextStyle(
                  color: Colorsmanager.kMaingrey,
                  fontSize: Fontsizemanager.font15)),
        ),
        ListTileCustom(
          title: TextmanagerAccount.kDarkmode,
          onTap: () {},
          iconDataLeading: Icons.dark_mode_outlined,
          rowtrailing: Container(),
        ),
        ListTileCustom(
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
                title: Text(TextmanagerAccount.kSelectfont),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text(TextmanagerAccount.kSmall),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(TextmanagerAccount.kMedium),
                      selected: true,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(TextmanagerAccount.kLarge),
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
                title: Text(TextmanagerAccount.kLagout),
                content: Text(TextmanagerAccount.kAreyousure),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(TextmanagerAccount.kCancel),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(TextmanagerAccount.kLagout),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
