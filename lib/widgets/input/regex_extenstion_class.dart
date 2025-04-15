extension extString on String {
  bool get isValidEmail {
    final emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(this);
  }

  bool get isValidName {
    final nameRegEx =
        RegExp(r'^\s*([A-Za-z]{1,}([\.,] | [-] |  )) + [A-Za-z] + \.?\s*$');
    return nameRegEx.hasMatch(this);
  }

  bool get isValidPassword {
    final passRegex = RegExp(
        r'^(?=.*?[A-Z]) (?=.*?[a-z]) (?=.*?[0-9]) (?=.*?[!@#\><*~]). {8,}/pre>');
    return passRegex.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }

  bool get isValidPhone {
    final phoneRegex = RegExp(r'^\+?0[0-9]{10}$');
    return phoneRegex.hasMatch(this);
  }
}
