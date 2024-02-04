import 'app_input_parameters.dart';
import 'app_input_utils.dart';

class AppInputValidations {
  static String? validate(String? data, AppInputParameters parameters) {
    final value = data ?? '';
    if (value.isEmpty) {
      if (!parameters.isRequired) {
        return null;
      }

      return "This field is required";
    }

    switch (parameters.inputType) {
      case AppInputType.email:
        final isValid = emailAddress(value);
        return isValid ? null : "Invalid email address";
      case AppInputType.phone:
        final isValid = numberPhone(value);
        return isValid ? null : "Invalid phone number";
      case AppInputType.password:
        final passwordValidation = password(value);
        if (passwordValidation != null) {
          return passwordValidation;
        }

        break;
      default:
        break;
    }

    if (parameters.validator != null) {
      return parameters.validator?.call(data);
    }

    return null;
  }

  static String? password(String password) {
    // Check if it has at least 6 characters
    RegExp regExp1 = RegExp(r'^.{6,}$');
    if (!regExp1.hasMatch(password)) {
      return 'The password must be at least 6 characters.';
    }

    // Check if it has at least one lowercase letter
    RegExp regExp2 = RegExp(r'^(?=.*[a-z])');
    if (!regExp2.hasMatch(password)) {
      return 'The password must contain at least one lowercase letter.';
    }

    // Check if it has at least one capital letter
    RegExp regExp3 = RegExp(r'^(?=.*[A-Z])');
    if (!regExp3.hasMatch(password)) {
      return 'The password must contain at least one capital letter.';
    }

    return null;
  }

  static numberPhone(String phone) {
    return RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(phone);
  }

  static emailAddress(String email) {
    final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(email);
  }
}
