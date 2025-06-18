import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/showmodel.dart';
import 'package:chat_group/features/account/presentation/view/widgets/list_tile_profile.dart';
import 'package:chat_group/features/account/presentation/view/widgets/row_app_bar_profile.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profileview extends StatefulWidget {
  const Profileview({super.key});
  static String id = RouteManager.kProfileViewPersonal;

  @override
  State<Profileview> createState() => _ProfileviewState();
}

class _ProfileviewState extends State<Profileview> {
  final ImagePicker _picker = ImagePicker();
  XFile? selectedImage; // لتخزين الصورة المختارة

  // دالة لفتح الخيارات (كاميرا أو معرض)
  void _onEditPressed() async {
    // await requestCameraPermission();
    await showOptionsDialog(context, (source) async {
      final pickedImage = await _picker.pickImage(source: source);
      if (pickedImage != null) {
        setState(() {
          selectedImage = pickedImage; // تحديث الصورة
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Paddingmanager.p15),
        child: Column(
          children: [
            SizedBox(height: Hightmanager.h20),
            const RowAppBarProfile(),
            SizedBox(height: Hightmanager.h30),
            ProfilePictureWithEditIcon(
              size: Fontsizemanager.font150,
              imageAsset: selectedImage?.path ?? AssetsManager.kprofile,
              onEditPressed: _onEditPressed,
            ),
            SizedBox(height: Hightmanager.h30),
            ListTileProfile(
              iconDataLeading: Icons.person,
              title: Textmanager.kName,
              subtitle: "hatem fathy",
            ),
            ListTileProfile(
              iconDataLeading: Icons.phone,
              title: Textmanager.kPhone,
              subtitle: "0106064296",
            ),
            ListTileProfile(
              iconDataLeading: Icons.email,
              title: Textmanager.kEmail,
              subtitle: "hatemf934@gmail.com",
            ),
            ListTileProfile(
              iconDataLeading: Icons.public,
              title: Textmanager.kCountry,
              subtitle: "Egypt",
            ),
            ListTileProfile(
              iconDataLeading: Icons.calendar_month,
              title: Textmanager.kDateOfBrith,
              subtitle: "25/5/2004",
            ),
            ListTileProfile(
              iconDataLeading: Icons.face,
              title: Textmanager.kGender,
              subtitle: "male",
            ),
          ],
        ),
      ),
    );
  }
}
