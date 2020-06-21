class Validation {
  String nameValidate(String value) {
    return value.isEmpty ? 'Fullname is required' : null;
  }

  String emailValidate(String value) {
    return value.isEmpty
        ? 'Email is required'
        : !value.contains('@') ? 'Email invalid' : null;
  }

  /// Password Validation:
  /// - Min length 4 character
  String passwordValidate(String value) {
    return value.isEmpty
        ? 'Password is required'
        : value.length < 4 ? 'Password min 4 character' : null;
  }
}
