import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
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
        leading: Icon(iconDataLeading, color: Colorsmanager.kblack),
        title: Text(
          title,
          style: TextStyle(color: titlecolor, fontWeight: FontWeight.bold),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            rowtrailing,
            SizedBox(width: Widthmanager.w2),
            Icon(Icons.chevron_right, color: Colorsmanager.kblack),
          ],
        ),
        onTap: onTap);
  }
}
