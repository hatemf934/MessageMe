import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/account/presentation/view/widgets/row_app_bar_profile.dart';
import 'package:flutter/material.dart';

class SectionProfileAppBar extends StatelessWidget {
  const SectionProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Hightmanager.h20),
        const RowAppBarProfile(),
        SizedBox(height: Hightmanager.h30),
      ],
    );
  }
}
