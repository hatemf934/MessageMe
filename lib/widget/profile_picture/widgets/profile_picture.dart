import 'dart:io';
import 'package:chat_group/constant.dart';
import 'package:chat_group/core/assets_manager.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class ProfilePictureWithEditIcon extends StatelessWidget {
  final String imageAsset;
  final double size;
  final VoidCallback onEditPressed;

  const ProfilePictureWithEditIcon({
    super.key,
    required this.imageAsset,
    required this.size,
    required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colorsmanager.kGrey300,
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(size / 2),
            child: imageAsset == AssetsManager.kprofile
                ? Image.asset(
                    imageAsset,
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    File(imageAsset), // عرض الصورة من المسار المحلي
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: onEditPressed,
            child: Container(
              width: size * 0.3,
              height: size * 0.3,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colorsmanager.kwhite,
                  width: Widthmanager.w2,
                ),
              ),
              child: Icon(
                Icons.edit,
                color: Colorsmanager.kwhite,
                size: size * 0.15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
