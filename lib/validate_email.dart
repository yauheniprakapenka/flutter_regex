/// Reviewed 18.07.2022
///
/// Wrong symbols sequence tested with traceability matrix.
/// ------------------
/// |   | . | _ | - |
/// | . | v | v | v |
/// | _ | v | v | v |
/// | - | v | v | v |
/// -----------------
const String _wrongEmailSymbolsSequencePattern =
    r'([.]{2,})|([-]{2,})|([@]{2,})|((\._)+)|((\.-)+)|((_\.)+)|((_-)+)|((-_)+)|((-\.)+)';
const String _emailPattern =
    r'^[a-zA-Z0-9][\w\-.]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\-.]*[a-zA-Z0-9]\.[a-zA-Z]{2,}$';
const String _emailRangePattern = r'^[\w\-@.]{8,254}$';

/// Return `true` if email valid.
///
/// `Email range`
/// - min 8
/// - max 256
/// - minimum valid pattern: xx@xx.xx
///
/// `Name`
/// - should be latin letters, numbers or symbols ".", "_", "-"
/// - must start and end with a letter or number
/// - cannot use two symbols together
bool validateEmail(String email) {
  if (!RegExp(_emailRangePattern).hasMatch(email)) return false;
  if (RegExp(_wrongEmailSymbolsSequencePattern).hasMatch(email)) return false;
  if (RegExp(_emailPattern).hasMatch(email)) return true;
  return false;
}

void main() {
  validateEmail('x.x@xx.xx'); // true
  validateEmail('x.-x@xx.xx'); // false
}
