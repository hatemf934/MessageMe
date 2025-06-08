import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/text_validate_manager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/widget/button_custom.dart';
import 'package:chat_group/features/authapp/presentation/manager/datauserscubit/datausers_cubit.dart';
import 'package:chat_group/features/authapp/presentation/view/startchat_view.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/country_code_picker_custom.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/country_feild.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_phone_text_feild.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_text_filed_profile.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/data_birth_feild.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/gender_text_feild.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CustomCompleteProfile extends StatefulWidget {
  const CustomCompleteProfile(
      {super.key, required this.email, required this.selectedImage});
  final String email;
  final XFile? selectedImage;

  @override
  State<CustomCompleteProfile> createState() => _CustomCompleteProfileState();
}

class _CustomCompleteProfileState extends State<CustomCompleteProfile> {
  String countryCode = '+20'; // Default country code
  GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String _selectedGender = '';
  String _selectedDate = '';
  String _selectedCountry = '';
  bool _nameValid = false;
  bool _phoneValid = false;
  bool _showCountryError = false;
  bool _showDateError = false;
  bool _showGenderError = false;

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

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomTextFieldName(
            validator: (value) {
              if (value!.isEmpty) {
                return TextValidateManager.pleaseSelectName;
              }
              return null;
            },
            label: Textmanager.kFullName,
            hintText: Textmanager.kFullName,
            controller: _nameController,
            isValid: _nameValid,
          ),
          PhoneNumberField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return TextValidateManager.pleaseSelectPhone;
              }
              if (value.length < 10) {
                return TextValidateManager.phoneTooShort;
              }
              if (!RegExp(TextValidateManager.phoneFormat).hasMatch(value)) {
                return TextValidateManager.invalidPhoneFormat;
              }
              return null;
            },
            widgetContryCode: CountryCodePickerCustom(
              onChanged: (newcode) {
                setState(() {
                  countryCode = newcode;
                });
              },
            ),
            label: Textmanager.kPhoneNumber,
            hintText: Textmanager.k000000000,
            controller: _phoneController,
            isValid: _phoneValid,
            countryCode: countryCode,
          ),
          GenderDropdownField(
            showError: _showGenderError,
            label: Textmanager.kGender,
            value: _selectedGender,
            onChanged: (value) {
              setState(() {
                _selectedGender = value ?? '';
                _showGenderError = false;
              });
            },
          ),
          DateOfBirthField(
            showError: _showDateError,
            label: Textmanager.kDateOfBrith,
            value: _selectedDate,
            onDateSelected: (DateTime date) {
              setState(() {
                _selectedDate = "${date.day}/${date.month}/${date.year}";
                _showDateError = false;
              });
            },
          ),
          CountryField(
            showError: _showCountryError,
            onCountrySelected: (country) {
              setState(() {
                _selectedCountry = country;
                _showCountryError = false;
              });
            },
            label: Textmanager.kCountry,
            value: _selectedCountry,
          ),
          ButtonCustom(
            textbuttom: Textmanager.kcontinue,
            color: kPrimaryColor,
            colortext: kSecondryColor,
            onpressed: () {
              if (formkey.currentState!.validate() &&
                  _selectedCountry.isNotEmpty) {
                BlocProvider.of<DatausersCubit>(context).sendUserInfo(
                    name: _nameController.text,
                    phone: countryCode + _phoneController.text,
                    country: _selectedCountry,
                    image: widget.selectedImage?.path ?? AssetsManager.kprofile,
                    gender: _selectedGender,
                    email: widget.email,
                    date: _selectedDate);
                Navigator.pushReplacementNamed(context, StartchatView.id);
              } else {
                setState(() {
                  _showCountryError = true;
                  _showDateError = true;
                  _showGenderError = true;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
