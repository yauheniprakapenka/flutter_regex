bool validateDigits(String value) {
  final regexp = RegExp(r'[0-9]');
  return regexp.hasMatch(value);
}
