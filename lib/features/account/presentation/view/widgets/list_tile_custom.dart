import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  const ListTileCustom(
      {super.key,
      required this.title,
      required this.onTap,
      this.titlecolor = Colors.black,
      required this.iconDataLeading,
      required this.rowtrailing});
  final IconData iconDataLeading;
  final Function() onTap;
  final String title;
  final Color titlecolor;
  final Widget rowtrailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(iconDataLeading, color: Theme.of(context).primaryColor),
        title: Text(
          title,
          style: TextStyle(color: titlecolor, fontWeight: FontWeight.bold),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            rowtrailing,
            SizedBox(width: Widthmanager.w2),
            Icon(Icons.chevron_right, color: Theme.of(context).primaryColor),
          ],
        ),
        onTap: onTap);
  }
}
