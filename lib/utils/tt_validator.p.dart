class Validator {
  Validator._();

  // ref: https://regexr.com/3bfsi
  static final _pwdRegex = RegExp(r'(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$');

  // ref: https://regexr.com/3bcrb
  static final _emailRegex = RegExp(
    r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );

  // ref: https://regexr.com/5it2j
  static final hasNumberRegex = RegExp('([0-9])');

  // ref: https://regexr.com/5it2p
  static final hasAlphabetUppercaseRegex = RegExp('([A-Z])');

  // ref: https://regexr.com/5it2s
  static final hasAlphabetLowercaseRegex = RegExp('([a-z])');

  static final hasAlphabetRegex = RegExp('([a-zA-Z])');

  static final hasEnglishRegex = RegExp(r'^[a-zA-Z0-9_]{1}$');

  static final usernameRegex = RegExp(r'^[a-zA-Z0-9_]{1,12}$');

  // ref: https://regexr.com/5it2v
  static final hasPunctuationsRegex = RegExp(r'/([*!@#$%^&*()?><{}";:\-|+=`~,.\\])');

  // ref: https://regexr.com/5it35
  static final digitOnlyRegex = RegExp(r'(^[0-9]*$)');

  // ref: https://regexr.com/5it3e
  static final notContainsDigitRegex = RegExp('[^0-9]');

  static final digitRegex = RegExp('[0-9]');

  static final inputWeight = RegExp(r'^\d{1,3}([\.\,]){0,1}((?!\1)\d{1}|\d{0})');

  // ref: https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
  /// Minimum eight characters, at least one letter, one number and one special characte
  static final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$');

  /// It's true if specified string is null or has no characters.
  static bool isEmpty(String? value) {
    return value == null || value.isEmpty;
  }

  /// It's true if specified string has come content.
  static bool isNotEmpty(String? value) {
    return !isEmpty(value);
  }

  static bool validPwd(String pwd) {
    return _pwdRegex.hasMatch(pwd);
  }

  static bool validPhone(String phone) {
    return digitRegex.hasMatch(phone);
  }

  static bool isEmail(String email) {
    return _emailRegex.hasMatch(email);
  }

  static bool digitOnly(String str) {
    return digitOnlyRegex.hasMatch(str);
  }

  // static TTextFieldValid? onNotEmptyValidator(String v) {
  //   if (v.isEmpty) {
  //     return TTextFieldValid.error(message: l10n.this_is_required);
  //   }
  //   return null;
  // }

  // static TTextFieldValid? onNameNotEmptyValidator(String v) {
  //   if (v.isEmpty) {
  //     return TTextFieldValid.error(message: l10n.please_enter_your_real_name);
  //   }
  //   return null;
  // }

  // static TTextFieldValid? onEmailValidator(String v) {
  //   final empty = onNotEmptyValidator(v);
  //   if (empty != null) {
  //     return empty;
  //   }
  //   if (!Validator.isEmail(v)) {
  //     final ls = <String>[l10n.please_check_the_email_domain_again];
  //     if (!v.contains('@')) {
  //       ls.add(l10n.please_enter_in_your_email_address);
  //     }
  //     return TTextFieldValid.error(message: ls.join('|'));
  //   }
  //   return null;
  // }

  // static TTextFieldValid? onPhoneNotEmptyValidator(String v) {
  //   if (v.isEmpty) {
  //     return TTextFieldValid.error(message: l10n.please_enter_your_mobile_phone_number);
  //   }
  //   return null;
  // }

  // static TTextFieldValid? onPhoneValidator(String v) {
  //   final empty = onPhoneNotEmptyValidator(v);
  //   if (empty != null) {
  //     return empty;
  //   }
  //   if (v.length < 9 || v.length > 11 || !Validator.validPhone(v)) {
  //     return TTextFieldValid.error(message: l10n.this_is_the_wrong_mobile_phone_number);
  //   }
  //   return null;
  // }

  // static TTextFieldValid? onLimitedCharValidator(String v) {
  //   if (v.isEmpty) {
  //     return null;
  //   }
  //   if (v.length < 12) {
  //     return TTextFieldValid.error(message: l10n.please_enter_12_15_digits);
  //   }
  //   return null;
  // }

  // static TTextFieldValid? onPasswordValidator(String v) {
  //   final empty = onNotEmptyValidator(v);
  //   if (empty != null) {
  //     return empty;
  //   }
  //   if (v.length < 8) {
  //     return TTextFieldValid.error(message: l10n.k_8_16_digits);
  //   }
  //   if (v.contains(' ')) {
  //     return TTextFieldValid.error(message: l10n.cannot_be_used);
  //   }
  //   if (!passwordRegex.hasMatch(v)) {
  //     return TTextFieldValid.error(message: l10n.the_combination_of_english_number_special_characters);
  //   }
  //   return null;
  // }
}
