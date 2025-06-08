class TextValidateManager {
  TextValidateManager._();
  static String emailRegExp =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{3,}$';
  static String passwordLeastLowerCaseLetter = r'(?=.*[a-z])';
  static String passwordLeastDigit = r'(?=.*\d)';
  static String passwordLeastOneCharacter = r'(?=.*[@$!%*?&])';
  static String passwordLeastEightNumber = r'.{8,}';
  static String phoneFormat = r'^\d+$';
  static String fieldIsRequired = "Field is required";
  static String validEmailAddress = " Enter a valid email address ";
  static String passwordFromAtoZ = " Password must be at least a [a-z] ";
  static String passwordSpicailCharacter =
      "Password must be at least a spicail character";
  static String passwordLeastNumber = " Password must be at least a number";
  static String passwordLeastAt8Number =
      " Password must be at least a 8 number";
  static String pleaseSelectGender = " Please select your gender";
  static String pleaseSelectDataOfBrith = 'Please select your date of birth';
  static String pleaseSelectCountry = 'Please select your country';
  static String pleaseSelectName = " Please enter your name";
  static String pleaseSelectPhone = " Please enter your phone number";
  static String phoneTooShort = " Phone number is too short";
  static String invalidPhoneFormat =
      " Please enter your phone number in digits only";
}
