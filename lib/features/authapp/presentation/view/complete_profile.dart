import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_complete_profile.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/profile_picture.dart';
import 'package:chat_group/core/widget/showmodel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});
  static String id = RouteManager.kProfilview;

  @override
  // ignore: library_private_types_in_public_api
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final ImagePicker _picker = ImagePicker();
  XFile? selectedImage;

  void _onEditPressed() async {
    await showOptionsDialog(context, (source) async {
      final pickedImage = await _picker.pickImage(source: source);
      if (pickedImage != null) {
        setState(() {
          selectedImage = pickedImage;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String email = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(Paddingmanager.p20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Center(
                child: ProfilePictureWithEditIcon(
                  onEditPressed: _onEditPressed,
                  size: Fontsizemanager.font150,
                  imageAsset: selectedImage?.path ?? AssetsManager.kprofile,
                ),
              ),
              CustomCompleteProfile(email: email, selectedImage: selectedImage),
            ],
          ),
        ),
      ),
    );
  }
}
