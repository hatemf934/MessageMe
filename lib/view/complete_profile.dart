import 'package:chat_group/core/assets_manager.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/routemanger.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/widget/profile_picture/widgets/profile_picture.dart';
import 'package:chat_group/widget/profile_picture/widgets/showmodel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});
  static String id = RouteManager.kProfilview;

  @override
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
      backgroundColor: Colorsmanager.kwhite,
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              // يمكنك إضافة توجيه للصفحة السابقة هنا
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          Text(
            Textmanager.kCompleteprofile,
            style: TextStyle(
              color: Colorsmanager.kblack,
              fontSize: Fontsizemanager.font20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ProfilePictureWithEditIcon(
            onEditPressed: _onEditPressed,
            size: Fontsizemanager.font150,
            imageAsset: selectedImage?.path ??
                AssetsManager
                    .kprofile, // عرض الصورة المختارة أو الصورة الافتراضية
          ),
        ],
      ),
    );
  }
}
