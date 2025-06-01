import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/country_feild.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_phone_text_feild.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_text_filed_profile.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/data_birth_feild.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/gender_text_feild.dart.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/profile_picture.dart';
import 'package:chat_group/core/widget/showmodel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PersonalProfile extends StatefulWidget {
  const PersonalProfile({super.key});
  static String id = RouteManager.kPersonalProfile;

  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
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
      _genderValid = _selectedGender.isNotEmpty;
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
      body: Padding(
        padding: EdgeInsets.all(Paddingmanager.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    // يمكنك إضافة توجيه للصفحة السابقة هنا
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: Fontsizemanager.font30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(
                  Textmanager.kPersonalProfile,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: Fontsizemanager.font20,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    // يمكنك إضافة توجيه للصفحة السابقة هنا
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.edit_note,
                    size: Fontsizemanager.font30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),

            Center(
              child: ProfilePictureWithEditIcon(
                onEditPressed: _onEditPressed,
                size: Fontsizemanager.font150,
                imageAsset: selectedImage?.path ?? AssetsManager.kprofile,
              ),
            ),
            CustomTextFieldName(
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
          ],
        ),
      ),
    );
  }
}
