class AppValidator {

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }

  static String? validateConfirmPassword(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Confirm password is required.';
    }

    if (password != confirmPassword) {
      return 'Passwords do not match.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    // Regular expression for phone number validation
    final phoneRegExp = RegExp(r'^(?:\+88|88)?01[3-9]\d{8}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format.';
    }

    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required.';
    }

    // Regular expression for name validation
    final nameRegExp = RegExp(r"^[A-Za-z\s'-]+$");

    if (!nameRegExp.hasMatch(value)) {
      return 'Invalid name format.';
    }

    return null;
  }

  static String? validateDate(String? date) {
    final parsedDate = DateTime.tryParse(date!);
    if (parsedDate == null) {
      return 'Date of birth is required.';
    }

    // Check if the date is in the future
    if (parsedDate.isAfter(DateTime.now())) {
      return 'Date of birth cannot be in the future.';
    }

    return null;
  }

static String? validatePositiveNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'This field is required.';
  }

  final number = num.tryParse(value);
  if (number == null || number <= 0) {
    return 'Please enter a positive number.';
  }

  return null;
}

}