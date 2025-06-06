import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/account/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Profileview.id);
      },
      child: Padding(
        padding: EdgeInsets.only(
            right: Paddingmanager.p23, left: Paddingmanager.p10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(Borderradiues.bo40),
                  child: Image.asset(
                    height: Hightmanager.h80,
                    width: Widthmanager.w80,
                    AssetsManager.kprofile,
                    fit: BoxFit.cover,
                  )),
              SizedBox(width: Widthmanager.w20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hatem Fathy',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: Fontsizemanager.font20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Hightmanager.h5),
                  Text("hatemf934@gmail.com",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
