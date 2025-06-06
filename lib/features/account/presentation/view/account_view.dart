import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/utils/textmanager_account.dart';
import 'package:chat_group/features/account/presentation/view/widgets/general_divider.dart';
import 'package:chat_group/features/account/presentation/view/widgets/list_of_list_tile.dart';
import 'package:chat_group/features/account/presentation/view/widgets/profile_list_tile.dart';
import 'package:chat_group/core/widget/BottomNavigationBarCustom.dart';
import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});
  static String id = RouteManager.kAccountview;

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  int _selectedIndex = 1;
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Hightmanager.h30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsManager.klogo,
                  height: Hightmanager.h30,
                ),
                SizedBox(width: Widthmanager.w10),
                Text(
                  TextmanagerAccount.kAccount,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: Fontsizemanager.font20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: Hightmanager.h30),
            const ProfileListTile(),
            SizedBox(height: Hightmanager.h20),
            const GeneralDivider(),
            const ListOfListTile(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBarCustom(
          onItemTapped: _onItemTapped,
          selectedIndex: _selectedIndex,
        ));
  }
}
