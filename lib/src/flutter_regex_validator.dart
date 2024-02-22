/// Regex Validator class for validating strings using regular expressions.
class RegexVal {
  /// Returns whether the pattern has a match in the given [str].
  ///
  /// Returns false if [str] is null.
  static bool hasMatch(String? str, String pattern) =>
      str == null ? false : RegExp(pattern).hasMatch(str);
}
