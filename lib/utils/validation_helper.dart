class ValidationHelper {
  static bool isValidEmail(String email) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email);
  }

  static bool isValidUrl(String url) {
    try {
      Uri.parse(url);
      return url.contains('.');
    } catch (e) {
      return false;
    }
  }

  static bool isValidPhoneNumber(String phone) {
    return RegExp(r'^[0-9]{10,15}$').hasMatch(phone.replaceAll(RegExp(r'[^0-9]'), ''));
  }

  static bool isValidPassword(String password) {
    return password.length >= 8 &&
        RegExp(r'[a-z]').hasMatch(password) &&
        RegExp(r'[A-Z]').hasMatch(password) &&
        RegExp(r'[0-9]').hasMatch(password);
  }

  static bool isValidUsername(String username) {
    return RegExp(r'^[a-zA-Z0-9_]{3,16}$').hasMatch(username);
  }

  static bool isEmpty(String? value) {
    return value == null || value.trim().isEmpty;
  }

  static String? validateEmail(String? value) {
    if (isEmpty(value)) return 'Email is required';
    if (!isValidEmail(value!)) return 'Enter a valid email';
    return null;
  }

  static String? validatePassword(String? value) {
    if (isEmpty(value)) return 'Password is required';
    if (value!.length < 8) return 'Password must be at least 8 characters';
    if (!isValidPassword(value)) {
      return 'Password must contain uppercase, lowercase, and numbers';
    }
    return null;
  }
}
