import 'package:chat_group/core/colorsmanager.dart';
import 'package:flutter/material.dart';

class ListTileProfile extends StatelessWidget {
  const ListTileProfile(
      {super.key,
      required this.iconDataLeading,
      required this.title,
      required this.subtitle});
  final IconData iconDataLeading;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconDataLeading, color: Colorsmanager.kblack),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }
}
