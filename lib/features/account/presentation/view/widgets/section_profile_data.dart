import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/account/presentation/view/widgets/list_tile_profile.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/profile_picture.dart';
import 'package:flutter/material.dart';

class SectionProfileData extends StatelessWidget {
  const SectionProfileData(
      {super.key,
      required this.imageAsset,
      required this.name,
      required this.phone,
      required this.email,
      required this.country,
      required this.date,
      required this.gender,
      required this.onEditPressed});
  final String imageAsset;
  final String name;
  final String phone;
  final String email;
  final String country;
  final String date;
  final String gender;
  final Function() onEditPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePictureWithEditIcon(
          size: Fontsizemanager.font150,
          imageAsset: imageAsset,
          onEditPressed: onEditPressed,
        ),
        SizedBox(height: Hightmanager.h30),
        ListTileProfile(
          iconDataLeading: Icons.person,
          title: Textmanager.kName,
          subtitle: name,
        ),
        ListTileProfile(
          iconDataLeading: Icons.phone,
          title: Textmanager.kPhone,
          subtitle: phone,
        ),
        ListTileProfile(
          iconDataLeading: Icons.email,
          title: Textmanager.kEmail,
          subtitle: email,
        ),
        ListTileProfile(
          iconDataLeading: Icons.public,
          title: Textmanager.kCountry,
          subtitle: country,
        ),
        ListTileProfile(
          iconDataLeading: Icons.calendar_month,
          title: Textmanager.kDateOfBrith,
          subtitle: date,
        ),
        ListTileProfile(
          iconDataLeading: Icons.face,
          title: Textmanager.kGender,
          subtitle: gender,
        ),
      ],
    );
  }
}
