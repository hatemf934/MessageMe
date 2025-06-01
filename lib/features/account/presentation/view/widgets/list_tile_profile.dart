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
      leading: Icon(iconDataLeading, color: Theme.of(context).primaryColor),
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }
}
