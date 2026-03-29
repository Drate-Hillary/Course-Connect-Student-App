import 'dart:convert';

import 'package:course_connect/util/constants/text_strings.dart';

class AppValidator {
  
  static String? validateEmptyText(String? fieldName, dynamic value) {
    if (value == null || value.toString().trim().isEmpty) {
      return '$fieldName is required!';
    }
    return null;
  }

  static String? validateEmail(String? value){
    if (value == null || value.isEmpty) {
      return TextStrings.emailRequired;
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return TextStrings.invalidEmail;
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required!';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one digit';
    }

    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return 'Password must contain at least one special character (!@#\$&*~)';
    }

    return null;
  }
  
  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirm Password is required!';
    }

    if (value != password) {
      return 'Passwords do not match';
    }

    return null;
  }
  
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    final phoneRegex = RegExp(r'^\+?[0-9]{7,15}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Invalid Phone Number';
    }

    return null;
  }

  static String? validateName(String? value) {
    return value == null || value.isEmpty
        ? TextStrings.nameRequired
        : null;
  }

  static String? validateStreet(String? value) {
    return value == null || value.isEmpty ? TextStrings.streetRequired : null;
  }

  static String? validateCity(String? value) {
    return value == null || value.isEmpty ? TextStrings.cityRequired : null;
  }

  static String? validateCountry(String? value) {
    return value == null || value.isEmpty ? TextStrings.countryRequired : null;
  }

  static String? validateLatitude(String? value) {
    return double.tryParse(value ?? '') == null
        ? TextStrings.mustBeNumber
        : null;
  }

  static String? validateLongitude(String? value) {
    return double.tryParse(value ?? '') == null
        ? TextStrings.mustBeNumber
        : null;
  }

  static String? validateStatus(String? value) {
    return value == null ? TextStrings.statusRequired : null;
  }

  static String? validateOperationHours(String? value) {
    if (value == null || value.isEmpty) {
      return TextStrings.hoursRequired;
    }
    try {
      jsonDecode(value);
      return null;
    } catch (e) {
      return TextStrings.invalidJsonFormat;
    }
  }
}