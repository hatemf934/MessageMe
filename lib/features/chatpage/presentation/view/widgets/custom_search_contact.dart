import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:flutter/material.dart';

class CustomSearchContact extends StatelessWidget {
  const CustomSearchContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: Fontsizemanager.font30,
                  color: Theme.of(context).primaryColor,
                )),
            Text(
              Textmanager.kSelectedContant,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.search,
                  size: Fontsizemanager.font30,
                  color: Theme.of(context).primaryColor,
                )),
          ],
        ),
        Divider(
          color: Colorsmanager.kGrey600,
          thickness: 0.5,
        ),
      ],
    );
  }
}
