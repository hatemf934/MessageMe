import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class SlidingTranstion extends StatelessWidget {
  const SlidingTranstion(
      {super.key,
      required this.slidingAnimation,
      required this.image,
      required this.name});
  final Animation<Offset> slidingAnimation;
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: Paddingmanager.p15,
          vertical: Paddingmanager.p10,
        ),
        decoration: BoxDecoration(
          color: Colorsmanager.kTransparent,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Borderradiues.bo40),
              child: Image.asset(
                height: Hightmanager.h60,
                width: Widthmanager.w60,
                image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: Widthmanager.w10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Hightmanager.h5),
                Text(
                  "New Message",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: Fontsizemanager.font15),
                ),
              ],
            ),
            const Spacer(),
            const Text("2.30pm"),
          ],
        ),
      ),
    );
  }
}
