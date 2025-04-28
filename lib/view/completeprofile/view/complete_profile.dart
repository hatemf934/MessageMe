import 'package:chat_group/constant.dart';
import 'package:chat_group/core/assets_manager.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/routemanger.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/view/completeprofile/widget/country_feild.dart';
import 'package:chat_group/view/completeprofile/widget/custom_phone_text_feild.dart';
import 'package:chat_group/view/completeprofile/widget/custom_text_filed_profile.dart';
import 'package:chat_group/view/completeprofile/widget/data_birth_feild.dart';
import 'package:chat_group/view/completeprofile/widget/gender_text_feild.dart.dart';
import 'package:chat_group/view/startchat_view.dart';
import 'package:chat_group/widget/button_custom.dart';
import 'package:chat_group/widget/profile_picture.dart';
import 'package:chat_group/widget/showmodel.dart';
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

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String _selectedGender = '';
  String _selectedDate = '';
  String _selectedCountry = '';

  bool _nameValid = false;
  bool _phoneValid = false;
  bool _genderValid = false;
  bool _dateValid = false;
  bool _countryValid = false;

  @override
  void initState() {
    super.initState();
    // Add listeners to validate input
    _nameController.addListener(_validateName);
    _phoneController.addListener(_validatePhone);
  }

  void _validateName() {
    setState(() {
      _nameValid = _nameController.text.trim().split(' ').length >= 2;
    });
  }

  void _validatePhone() {
    setState(() {
      _phoneValid = _phoneController.text.trim().length >= 10;
    });
  }

  void _onGenderChanged(String? value) {
    setState(() {
      _selectedGender = value ?? '';
      _genderValid = true;
    });
  }

  void _onDateSelected(DateTime date) {
    setState(() {
      _selectedDate = "${date.day}/${date.month}/${date.year}";
      _dateValid = true;
    });
  }

  void _onCountrySelected(String country) {
    setState(() {
      _selectedCountry = country;
      _countryValid = true;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanager.kwhite,
      body: Padding(
        padding: EdgeInsets.all(Paddingmanager.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                // يمكنك إضافة توجيه للصفحة السابقة هنا
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),

            Center(
              child: ProfilePictureWithEditIcon(
                onEditPressed: _onEditPressed,
                size: Fontsizemanager.font150,
                imageAsset: selectedImage?.path ??
                    AssetsManager
                        .kprofile, // عرض الصورة المختارة أو الصورة الافتراضية
              ),
            ),
            CustomTextFieldProfil(
              label: Textmanager.kFullName,
              hintText: Textmanager.kFullName,
              controller: _nameController,
              isValid: _nameValid,
            ),
            PhoneNumberField(
              label: Textmanager.kPhoneNumber,
              hintText: Textmanager.k000000000,
              controller: _phoneController,
              isValid: _phoneValid,
            ),
            GenderDropdownField(
              label: Textmanager.kGender,
              value: _selectedGender,
              onChanged: _onGenderChanged,
              isValid: _genderValid,
            ),
            DateOfBirthField(
              label: Textmanager.kDateOfBrith,
              value: _selectedDate,
              onDateSelected: _onDateSelected,
              isValid: _dateValid,
            ),
            // Country field
            CountryField(
              label: Textmanager.kCountry,
              value: _selectedCountry,
              onCountrySelected: _onCountrySelected,
              isValid: _countryValid,
            ),
            ButtonCustom(
              textbuttom: Textmanager.kcontinue,
              color: kPrimaryColor,
              colortext: kSecondryColor,
              onpressed: () {
                Navigator.pushNamed(context, StartchatView.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
