import 'package:chat_group/constant.dart';
import 'package:chat_group/core/borderradiues.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:chat_group/widget/profile_picture/widgets/build_options.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<void> showOptionsDialog(
    BuildContext context, Function(ImageSource) pickImage) async {
  await showModalBottomSheet(
    context: context,
    backgroundColor: kPrimaryColor, // لون الخلفية
    shape: RoundedRectangleBorder(
      borderRadius:
          BorderRadius.vertical(top: Radius.circular(Borderradiues.bo20)),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: Hightmanager.h230,
        child: Column(
          children: [
            SizedBox(height: Hightmanager.h8),
            Container(
              width: Widthmanager.w40,
              height: Hightmanager.h5,
              decoration: BoxDecoration(
                color: Colorsmanager.kMaingrey,
                borderRadius: BorderRadius.circular(Borderradiues.bo10),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colorsmanager.kwhite,
                      size: Fontsizemanager.font30,
                    )),
                Text(
                  Textmanager.kProfilephoto,
                  style: TextStyle(
                    color: Colorsmanager.kwhite,
                    fontSize: Fontsizemanager.font20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_outline,
                      color: Colorsmanager.kwhite,
                      size: Fontsizemanager.font30,
                    )),
              ],
            ),
            SizedBox(height: Hightmanager.h30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildOptions(
                  onPressed: () {
                    Navigator.pop(context);
                    pickImage(ImageSource.camera); // اختيار من الكاميرا
                  },
                  icon: Icons.camera_alt_outlined,
                  label: Textmanager.kCamera,
                ),
                BuildOptions(
                    onPressed: () {
                      Navigator.pop(context);
                      pickImage(ImageSource.gallery); // اختيار من المعرض
                    },
                    icon: Icons.photo_outlined,
                    label: Textmanager.kGallery),
              ],
            ),
          ],
        ),
      );
    },
  );
}
