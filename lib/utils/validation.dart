
class Validation {
  final String mobileNumberValidationRegex = r"/^(\+\d{1,3}[- ]?)?\d{10}$/";

  bool validateMobileNumber(String input) {
    final bool isValid = RegExp(mobileNumberValidationRegex).hasMatch(input) && input.isNotEmpty;
    return isValid;
  }
}
