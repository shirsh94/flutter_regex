/*### Strict Patterns in Regular Expressions
Strict patterns in regular expressions are enforced using the `^` (caret) and `$` (dollar sign) symbols.
The `^` asserts the start of a line, and the `$` asserts the end, ensuring that the entire string matches the pattern.
This means that if any character in the string does not follow the pattern, even when using the `hasMatch` function,
the regex will return false.
For example, consider the pattern for email validation: `^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$`,
which ensures that the entire string represents a valid email address.
If you apply this pattern to `'This is your email: test@gmail.com'`,
it would return false because the string as a whole does not match the email pattern. However, applying it to `'test@gmail.com'` would return true, as it meets the email pattern criteria.
Strict patterns are valuable for ensuring that the entire string adheres to a specific format,
making them useful in form validation and data processing to enforce strict data formatting rules. Understanding these concepts helps in building robust validation mechanisms in applications.*/
class RegexPattern {
  /*### Username Regular Expression (Simple)

This regular expression validates usernames that meet the following criteria:

- Minimum 3 characters
- Allowed to use underscore (`_`) and period (`.`) characters in the middle of the name

Regex Pattern: `^[a-zA-Z0-9]{1}[a-zA-Z0-9._]{1,}[a-zA-Z0-9]{1}$`

Explanation:
- `^` asserts the start of the line
- `[a-zA-Z0-9]{1}` matches any alphanumeric character exactly once (to ensure the username starts and ends with a valid character)
- `[a-zA-Z0-9._]{1,}` matches any alphanumeric character, underscore, or period one or more times (to allow these characters in the middle)
- `[a-zA-Z0-9]{1}` matches any alphanumeric character exactly once (to ensure the username ends with a valid character)
- `$` asserts the end of the line

This regex provides a simple validation for usernames, ensuring they meet the specified criteria.*/
  static String username = r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$';

/*### Username Regular Expression (v2)

This regular expression validates usernames that meet the following criteria:

- May start with `@`
- Minimum 3 characters
- Allowed to use alphanumeric characters, underscore (`_`), dash (`-`), and period (`.`)
- Has only one symbol in a row
- Symbols can only be used in the middle of the name

Regex Pattern: `^@[a-zA-Z0-9]+(?:[_.-][a-zA-Z0-9]+)*$`

Explanation:
- `^` asserts the start of the line
- `@` matches the `@` symbol at the beginning of the username
- `[a-zA-Z0-9]+` matches one or more alphanumeric characters
- `(?:[_.-][a-zA-Z0-9]+)*` is a non-capturing group that allows the use of one symbol (`_`, `-`, or `.`) followed by one or more alphanumeric characters, repeated zero or more times
- `$` asserts the end of the line

This regex provides a more specific validation for usernames, enforcing the use of only one symbol in a row and allowing symbols only in the middle of the name.*/
  static String usernameV2 =
      r'^(?!.*[_\.\-]{2})@?[a-zA-Z0-9][a-zA-Z0-9_\.\-]+[a-zA-Z0-9]$';

  /// Username (Google) regex
  ///
  /// Minimum 6 characters, maximum 30 characters
  /// Contain letters (a-z), numbers (0-9), and period (.).
  /// Must start and end with with letters or numbers.
  /// Can't have consecutive period (.).
  static String usernameGoogle =
      r'^(?!.*\.\.)[a-zA-Z0-9][a-zA-Z0-9\.]{4,28}[a-zA-Z0-9]$';

/*### Instagram Username Regular Expression

This regular expression validates usernames for Instagram that meet the following criteria:

- May start with `@`
- Minimum 3 characters, maximum 30 characters
- Allowed to use alphanumeric characters, underscore (`_`), and period (`.`)
- Cannot start or end with a period (`.`)
- Cannot have consecutive periods (`.`)

Regex Pattern: `^@[a-zA-Z0-9][a-zA-Z0-9_.]{2,28}[a-zA-Z0-9]$`

Explanation:
- `^` asserts the start of the line
- `@` matches the `@` symbol at the beginning of the username
- `[a-zA-Z0-9]` matches any alphanumeric character
- `[a-zA-Z0-9_.]{2,28}` matches between 2 and 28 occurrences of alphanumeric characters, underscores, or periods
- `[a-zA-Z0-9]` matches any alphanumeric character at the end of the username
- `$` asserts the end of the line

This regex provides a specific validation for Instagram usernames, ensuring they meet the platform's requirements.*/
  static String usernameInstagram = r'^(?!.*\.\.)@?\w[\w\.]{1,28}\w$';

/*For Discord usernames, the validation criteria are as follows:

- Must be between 2 and 32 characters long.
- Allowed characters are alphanumeric, underscore (`_`), and dash (`-`).
- Must start with an alphanumeric character.
- Must not end with a dash (`-`).

Regex Pattern: `^[a-zA-Z0-9][a-zA-Z0-9-_]{0,30}[a-zA-Z0-9]$`

Explanation:
- `^` asserts the start of the line
- `[a-zA-Z0-9]` matches any alphanumeric character at the beginning of the username
- `[a-zA-Z0-9-_]{0,30}` matches between 0 and 30 occurrences of alphanumeric characters, underscores, or dashes
- `[a-zA-Z0-9]` matches any alphanumeric character at the end of the username
- `$` asserts the end of the line

This regex provides a validation pattern for Discord usernames, ensuring they meet the platform's requirements.*/
  static String usernameDiscord =
      r'^(?!.*(discord|[`]{3}))(?!here|everyone).[^\#\@\:]{0,30}(#[0-9]{4})?$';

/*For validating URLs, a regex pattern can be used. Here's a simple version:

Regex Pattern: `^(http|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?$`

Explanation:
- `^` asserts the start of the line
- `(http|https):\/\/` matches either "http://" or "https://"
- `[\w\-_]+` matches one or more word characters, hyphens, or underscores (the domain name)
- `(\.[\w\-_]+)+` matches one or more occurrences of a period followed by one or more word characters, hyphens, or underscores (for subdomains)
- `([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?` matches optional path and query parameters
- `$` asserts the end of the line

This regex pattern provides basic validation for URLs, ensuring they start with "http://" or "https://" and have a valid domain name and optional path/query parameters.*/
  static String url =
      r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-@]+))*$";

  /*For validating URIs (Uniform Resource Identifiers), which can include URLs, you can use a regex pattern like this:

Regex Pattern: `^(?:([A-Za-z]+):)?(\/{0,3})([0-9.\-A-Za-z]+)(?::(\d+))?(?:\/([^?#]*))?(?:\?([^#]*))?(?:#(.*))?$`

Explanation:
- `^` asserts the start of the line
- `(?:([A-Za-z]+):)?` matches an optional scheme followed by ":" (e.g., "http:", "ftp:", etc.)
- `(\/{0,3})` matches the path's optional leading "/"
- `([0-9.\-A-Za-z]+)` matches the domain name or IP address
- `(?::(\d+))?` matches an optional port number preceded by ":"
- `(?:\/([^?#]*))?` matches an optional path
- `(?:\?([^#]*))?` matches an optional query string preceded by "?"
- `(?:#(.*))?` matches an optional fragment identifier preceded by "#"
- `$` asserts the end of the line

This regex pattern provides a comprehensive validation for URIs, including URLs, by capturing different parts of the URI such as scheme, domain, port, path, query string, and fragment identifier.*/
  static String uri =
      r"^(?!.*[?@!&`()*+,;=_\-~\]\[#$]{2})(?!.*[?@!&`()*+,;=_.\-~:?\[\]]$)(?!.*(\/\.|\.\/))(\w+:(\/\/)?)\S*$";

/*For validating phone numbers with the specified criteria, you can use the following regex pattern:

Regex Pattern: `^(0|\+(?:\d{2,4}\s*)?(?:\(\d{2,3}\)\s*)?)\d+(?:[\s-]*\d+)*$`

Explanation:
- `^` asserts the start of the line
- `(0|\+(?:\d{2,4}\s*)?(?:\(\d{2,3}\)\s*)?)` matches the starting part of the phone number, which can be "0", "+", "+XX " (where XX is 2 to 4 digits), or "(+XX )" (where XX is 2 to 3 digits)
- `\d+` matches one or more digits
- `(?:[\s-]*\d+)*` allows for whitespace or "-" between digits, allowing for multiple groups like this if separated by spaces or dashes
- `$` asserts the end of the line

This regex pattern provides a flexible validation for phone numbers that can start with "0", "+", "+XX ", or "(+XX )" and allow whitespace separating digits.*/
  static String phone =
      r'^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$';

  /// Hexadecimal regex
  static String hexadecimal = r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$';

  /// Image vector regex
  static String vector = r'.(svg)$';

  /// Image regex
  static String image = r'.(jpeg|jpg|gif|png|bmp|webp|heic)$';

  /// Audio regex
  static String audio = r'.(mp3|wav|wma|amr|ogg)$';

  /// Video regex
  static String video = r'.(mp4|avi|wmv|rmvb|mpg|mpeg|3gp)$';

  /// Txt regex
  static String txt = r'.txt$';

  /// Document regex
  static String doc = r'.(doc|docx)$';

  /// Excel regex
  static String excel = r'.(xls|xlsx)$';

  /// PPT regex
  static String ppt = r'.(ppt|pptx)$';

  /// APK regex
  static String apk = r'.apk$';

  /// IPA regex
  static String ipa = r'.ipa$';

  /// PDF regex
  static String pdf = r'.pdf$';

  /// HTML regex
  static String html = r'.html$';

  /// Regular expression for matching DateTime strings in UTC format.
  ///
  /// This regex can be used to validate and extract DateTime strings in the UTC format,
  /// including various valid formats with milliseconds and timezone information.
  ///
  /// Valid Formats:
  /// - YYYY-MM-DDTHH:mm:ss.ffffffZ
  /// - YYYY-MM-DDTHH:mm:ss.ffffff
  /// - YYYY-MM-DD HH:mm:ss.ffffffZ
  /// - YYYY-MM-DD HH:mm:ss.ffffff
  /// - YYYY-MM-DDTHH:mm:ss.fffZ
  /// - YYYY-MM-DDTHH:mm:ss.fff
  /// - YYYY-MM-DD HH:mm:ss.fffZ
  /// - YYYY-MM-DD HH:mm:ss.fff
  ///
  /// Examples:
  /// - 2020-04-27 08:14:39.977
  /// - 2020-04-27T08:14:39.977
  /// - 2020-04-27 01:14:39.977Z
  /// - 2020-04-27 08:14:39
  /// - 2020-04-27T08:14:39
  /// - 2020-04-27 01:14:39Z
  static String dateTimeUTC =
      r'^\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}(.\d{3,})?[zZ]?$';

  /// Regular expression for matching various date and time formats.
  ///
  /// This regex can be used to validate and extract date and time strings in various common formats,
  /// including UTC format, various combinations of `YYYY-MM-DD HH:mm:ss`, time with AM/PM,
  /// month and year, day of the week with date, and more.
  ///
  /// Valid Formats:
  /// - All DateTime regex (UTC)
  /// - many combination of `YYYY-MM-DD HH:mm:ss`
  /// - HH:mm AM (or PM)
  /// - MMMM yyyy
  /// - MMM, d yyyy
  /// - etc.
  ///
  /// Examples:
  /// - 2023-05-18T12:45:30
  /// - 2023-05-18
  /// - 2023-05-18 12:45
  /// - 18/Oct/23 05:30
  /// - Jun 10, 2024
  /// - 03:15 PM
  /// - Friday, 21 June 2024
  /// - 12/28
  /// - 05:00:20
  /// - Thu, Dec 26
  /// - etc.
  static String dateTime =
      r'^([a-zA-Z]{3,},? ?)?([0-9]{1,4}|[a-zA-Z]{3,})[ -\/\.,:]([0-9]{1,4}|[a-zA-Z]{3,})([ -\/\.,:] ?\w+)?([ T]\d{2}:\d{2}(:\d{2})?(\.\d{3,})?[zZ]?)?([aApP]\.?[mM])?$';

  /// Binary regex
  /// Consist only 0 & 1
  static String binary = r'^[0-1]*$';

  /// MD5 regex
  static String md5 = r'^[a-f0-9]{32}$';

  /// CVV regex
  static String cvv = r'^\d{3}$';

  /// SHA1 regex
  static String sha1 =
      r'^(([A-Fa-f0-9]{2}\:){19}[A-Fa-f0-9]{2}|[A-Fa-f0-9]{40})$';

  /// SHA256 regex
  static String sha256 =
      r'^([A-Fa-f0-9]{2}\:){31}[A-Fa-f0-9]{2}|[A-Fa-f0-9]{64}$';

  /// SSN (Social Security Number) regex
  static String ssn =
      r'^(?!0{3}|6{3}|9[0-9]{2})[0-9]{3}-?(?!0{2})[0-9]{2}-?(?!0{4})[0-9]{4}$';

  /// IPv4 regex
  static String ipv4 = r'^(?:(?:^|\.)(?:2(?:5[0-5]|[0-4]\d)|1?\d?\d)){4}$';

  /// IPv6 regex
  static String ipv6 =
      r'^((([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}:([0-9A-Fa-f]{1,4}:)?[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){4}:([0-9A-Fa-f]{1,4}:){0,2}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){3}:([0-9A-Fa-f]{1,4}:){0,3}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){2}:([0-9A-Fa-f]{1,4}:){0,4}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(([0-9A-Fa-f]{1,4}:){0,5}:((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(::([0-9A-Fa-f]{1,4}:){0,5}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|([0-9A-Fa-f]{1,4}::([0-9A-Fa-f]{1,4}:){0,5}[0-9A-Fa-f]{1,4})|(::([0-9A-Fa-f]{1,4}:){0,6}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:))$';

  /// ISBN 10 & 13 regex
  static String isbn =
      r'^(ISBN(\-1[03])?[:]?[ ]?)?(([0-9Xx][- ]?){13}|([0-9Xx][- ]?){10})$';

  /// Github repository regex
  static String github =
      r'^((git|ssh|http(s)?)|(git@[\w\.]+))(:(\/\/)?)([\w\.@\:/\-~]+)(\.git)(\/)?$';

  /// Passport No. regex
  static String passport = r'^(?!^0+$)[a-zA-Z0-9]{6,9}$';

  /// Numeric Only regex
  static String numericOnly = r'^\d+$';

  /// Alphabet Only regex
  static String alphabetOnly = r'^[a-zA-Z]+$';

  /// Alphabet & Numeric Only regex
  static String alphaNumericOnly = r'^[a-zA-Z0-9]+$';

  /// Alphabet, Numeric, Symbol Only regex
  static String alphaNumericSymbolOnly =
      r'''^[a-zA-Z0-9!@#$%^&*()-_+=~{}:";',./|\\\[\]<>?]+$''';

  /// No Whitespace regex
  /// Contains: Alphabet, Numeric, & Symbol
  static String noWhitespace = r"^\S*$";

  /// Password (Easy) Regex
  ///
  /// No whitespace allowed
  /// Minimum characters: 8
  static String passwordEasy = r'^\S{8,}$';

  /// Password (Easy) Regex
  ///
  /// Minimum characters: 8
  static String passwordEasyWhitespace = r'^[\S ]{8,}$';

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  static String passwordNormal1 = r'^(?=.*[A-Za-z])(?=.*\d)\S{8,}$';

  /// Password (Normal) Regex
  ///
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  static String passwordNormal1Whitespace =
      r'^(?=.*[A-Za-z])(?=.*\d)[\S ]{8,}$';

  /// Password (Normal) Regex
  ///
  /// No symbolic characters allowed
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  static String passwordNormal2 = r'^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z0-9]{8,}$';

  /// Password (Normal) Regex
  ///
  /// No symbolic characters allowed
  /// Must contains: 1 letter & 1 number
  /// Minimum characters: 8
  static String passwordNormal2Whitespace =
      r'^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z0-9 ]{8,}$';

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  static String passwordNormal3 = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)\S{8,}$';

  /// Password (Normal) Regex
  ///
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  static String passwordNormal3Whitespace =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\S ]{8,}$';

  /// Password (Hard) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum characters: 8
  static String passwordHard =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])\S{8,}$';

  /// Password (Hard) Regex
  ///
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum characters: 8
  static String passwordHardWhitespace =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[\S ]{8,}$';

  /// UUID
  static String uuid =
      r'^[0-9a-fA-F]{8}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{12}$';

  /// Bitcoin Address
  ///
  /// Consist of 26-35 (42 on bc1) alphanumeric characters.
  /// Starts with 1, 3, or bc1.
  /// It contains digits in the range of 0 to 9.
  /// The uppercase letter O and the uppercase letter I are not used to avoid visual ambiguity.
  ///
  static String bitcoinAddress =
      r'^(?![13].{34,})(bc1|[13])[a-km-zA-HJ-NP-Z0-9]{25,39}$';

  /// Bitcoin (Taproot) Address
  ///
  /// Pay-to-Taproot (P2TR)
  /// Invoice address format: Bech32m
  /// 62 alphanumeric characters, case insensitive
  /// Starts with bc1p.
  ///
  static String bitcoinTaprootAddress = r'^(bc1p)[a-zA-Z0-9]{58}$';

  /// Bitcoin (Segway) Address
  ///
  /// Pay-to-Witness-Public-Key-hash (P2WPKH)
  /// Invoice address format: Bech32m
  /// 42 alphanumeric characters, case insensitive
  /// Starts with bc1q.
  ///
  static String bitcoinSegwitAddress = r'^(bc1q)[a-zA-Z0-9]{38}$';

  /// Ethereum Address
  static String ethereumAddress = r'^0x[a-fA-F0-9]{40}$';

  /// This is the recommended regular expression to use as emoji. It matches all
  /// emoji recommended for general interchange
  static String emoji =
      r'[#*0-9]\uFE0F?\u20E3|[\xA9\xAE\u203C\u2049\u2122\u2139\u2194-\u2199\u21A9\u21AA\u231A\u231B\u2328\u23CF\u23ED-\u23EF\u23F1\u23F2\u23F8-\u23FA\u24C2\u25AA\u25AB\u25B6\u25C0\u25FB\u25FC\u25FE\u2600-\u2604\u260E\u2611\u2614\u2615\u2618\u2620\u2622\u2623\u2626\u262A\u262E\u262F\u2638-\u263A\u2640\u2642\u2648-\u2653\u265F\u2660\u2663\u2665\u2666\u2668\u267B\u267E\u267F\u2692\u2694-\u2697\u2699\u269B\u269C\u26A0\u26A7\u26AA\u26B0\u26B1\u26BD\u26BE\u26C4\u26C8\u26CF\u26D1\u26D3\u26E9\u26F0-\u26F5\u26F7\u26F8\u26FA\u2702\u2708\u2709\u270F\u2712\u2714\u2716\u271D\u2721\u2733\u2734\u2744\u2747\u2757\u2763\u27A1\u2934\u2935\u2B05-\u2B07\u2B1B\u2B1C\u2B55\u3030\u303D\u3297\u3299]\uFE0F?|[\u261D\u270C\u270D](?:\uFE0F|\uD83C[\uDFFB-\uDFFF])?|[\u270A\u270B](?:\uD83C[\uDFFB-\uDFFF])?|[\u23E9-\u23EC\u23F0\u23F3\u25FD\u2693\u26A1\u26AB\u26C5\u26CE\u26D4\u26EA\u26FD\u2705\u2728\u274C\u274E\u2753-\u2755\u2795-\u2797\u27B0\u27BF\u2B50]|\u26F9(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])?(?:\u200D[\u2640\u2642]\uFE0F?)?|\u2764\uFE0F?(?:\u200D(?:\uD83D\uDD25|\uD83E\uDE79))?|\uD83C(?:[\uDC04\uDD70\uDD71\uDD7E\uDD7F\uDE02\uDE37\uDF21\uDF24-\uDF2C\uDF36\uDF7D\uDF96\uDF97\uDF99-\uDF9B\uDF9E\uDF9F\uDFCD\uDFCE\uDFD4-\uDFDF\uDFF5\uDFF7]\uFE0F?|[\uDF85\uDFC2\uDFC7](?:\uD83C[\uDFFB-\uDFFF])?|[\uDFC3\uDFC4\uDFCA](?:\uD83C[\uDFFB-\uDFFF])?(?:\u200D[\u2640\u2642]\uFE0F?)?|[\uDFCB\uDFCC](?:\uFE0F|\uD83C[\uDFFB-\uDFFF])?(?:\u200D[\u2640\u2642]\uFE0F?)?|[\uDCCF\uDD8E\uDD91-\uDD9A\uDE01\uDE1A\uDE2F\uDE32-\uDE36\uDE38-\uDE3A\uDE50\uDE51\uDF00-\uDF20\uDF2D-\uDF35\uDF37-\uDF7C\uDF7E-\uDF84\uDF86-\uDF93\uDFA0-\uDFC1\uDFC5\uDFC6\uDFC8\uDFC9\uDFCF-\uDFD3\uDFE0-\uDFF0\uDFF8-\uDFFF]|\uDDE6\uD83C[\uDDE8-\uDDEC\uDDEE\uDDF1\uDDF2\uDDF4\uDDF6-\uDDFA\uDDFC\uDDFD\uDDFF]|\uDDE7\uD83C[\uDDE6\uDDE7\uDDE9-\uDDEF\uDDF1-\uDDF4\uDDF6-\uDDF9\uDDFB\uDDFC\uDDFE\uDDFF]|\uDDE8\uD83C[\uDDE6\uDDE8\uDDE9\uDDEB-\uDDEE\uDDF0-\uDDF5\uDDF7\uDDFA-\uDDFF]|\uDDE9\uD83C[\uDDEA\uDDEC\uDDEF\uDDF0\uDDF2\uDDF4\uDDFF]|\uDDEA\uD83C[\uDDE6\uDDE8\uDDEA\uDDEC\uDDED\uDDF7-\uDDFA]|\uDDEB\uD83C[\uDDEE-\uDDF0\uDDF2\uDDF4\uDDF7]|\uDDEC\uD83C[\uDDE6\uDDE7\uDDE9-\uDDEE\uDDF1-\uDDF3\uDDF5-\uDDFA\uDDFC\uDDFE]|\uDDED\uD83C[\uDDF0\uDDF2\uDDF3\uDDF7\uDDF9\uDDFA]|\uDDEE\uD83C[\uDDE8-\uDDEA\uDDF1-\uDDF4\uDDF6-\uDDF9]|\uDDEF\uD83C[\uDDEA\uDDF2\uDDF4\uDDF5]|\uDDF0\uD83C[\uDDEA\uDDEC-\uDDEE\uDDF2\uDDF3\uDDF5\uDDF7\uDDFC\uDDFE\uDDFF]|\uDDF1\uD83C[\uDDE6-\uDDE8\uDDEE\uDDF0\uDDF7-\uDDFB\uDDFE]|\uDDF2\uD83C[\uDDE6\uDDE8-\uDDED\uDDF0-\uDDFF]|\uDDF3\uD83C[\uDDE6\uDDE8\uDDEA-\uDDEC\uDDEE\uDDF1\uDDF4\uDDF5\uDDF7\uDDFA\uDDFF]|\uDDF4\uD83C\uDDF2|\uDDF5\uD83C[\uDDE6\uDDEA-\uDDED\uDDF0-\uDDF3\uDDF7-\uDDF9\uDDFC\uDDFE]|\uDDF6\uD83C\uDDE6|\uDDF7\uD83C[\uDDEA\uDDF4\uDDF8\uDDFA\uDDFC]|\uDDF8\uD83C[\uDDE6-\uDDEA\uDDEC-\uDDF4\uDDF7-\uDDF9\uDDFB\uDDFD-\uDDFF]|\uDDF9\uD83C[\uDDE6\uDDE8\uDDE9\uDDEB-\uDDED\uDDEF-\uDDF4\uDDF7\uDDF9\uDDFB\uDDFC\uDDFF]|\uDDFA\uD83C[\uDDE6\uDDEC\uDDF2\uDDF3\uDDF8\uDDFE\uDDFF]|\uDDFB\uD83C[\uDDE6\uDDE8\uDDEA\uDDEC\uDDEE\uDDF3\uDDFA]|\uDDFC\uD83C[\uDDEB\uDDF8]|\uDDFD\uD83C\uDDF0|\uDDFE\uD83C[\uDDEA\uDDF9]|\uDDFF\uD83C[\uDDE6\uDDF2\uDDFC]|\uDFF3\uFE0F?(?:\u200D(?:\u26A7\uFE0F?|\uD83C\uDF08))?|\uDFF4(?:\u200D\u2620\uFE0F?|\uDB40\uDC67\uDB40\uDC62\uDB40(?:\uDC65\uDB40\uDC6E\uDB40\uDC67|\uDC73\uDB40\uDC63\uDB40\uDC74|\uDC77\uDB40\uDC6C\uDB40\uDC73)\uDB40\uDC7F)?)|\uD83D(?:[\uDC08\uDC26](?:\u200D\u2B1B)?|[\uDC3F\uDCFD\uDD49\uDD4A\uDD6F\uDD70\uDD73\uDD76-\uDD79\uDD87\uDD8A-\uDD8D\uDDA5\uDDA8\uDDB1\uDDB2\uDDBC\uDDC2-\uDDC4\uDDD1-\uDDD3\uDDDC-\uDDDE\uDDE1\uDDE3\uDDE8\uDDEF\uDDF3\uDDFA\uDECB\uDECD-\uDECF\uDEE0-\uDEE5\uDEE9\uDEF0\uDEF3]\uFE0F?|[\uDC42\uDC43\uDC46-\uDC50\uDC66\uDC67\uDC6B-\uDC6D\uDC72\uDC74-\uDC76\uDC78\uDC7C\uDC83\uDC85\uDC8F\uDC91\uDCAA\uDD7A\uDD95\uDD96\uDE4C\uDE4F\uDEC0\uDECC](?:\uD83C[\uDFFB-\uDFFF])?|[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6](?:\uD83C[\uDFFB-\uDFFF])?(?:\u200D[\u2640\u2642]\uFE0F?)?|[\uDD74\uDD90](?:\uFE0F|\uD83C[\uDFFB-\uDFFF])?|[\uDC00-\uDC07\uDC09-\uDC14\uDC16-\uDC25\uDC27-\uDC3A\uDC3C-\uDC3E\uDC40\uDC44\uDC45\uDC51-\uDC65\uDC6A\uDC79-\uDC7B\uDC7D-\uDC80\uDC84\uDC88-\uDC8E\uDC90\uDC92-\uDCA9\uDCAB-\uDCFC\uDCFF-\uDD3D\uDD4B-\uDD4E\uDD50-\uDD67\uDDA4\uDDFB-\uDE2D\uDE2F-\uDE34\uDE37-\uDE44\uDE48-\uDE4A\uDE80-\uDEA2\uDEA4-\uDEB3\uDEB7-\uDEBF\uDEC1-\uDEC5\uDED0-\uDED2\uDED5-\uDED7\uDEDC-\uDEDF\uDEEB\uDEEC\uDEF4-\uDEFC\uDFE0-\uDFEB\uDFF0]|\uDC15(?:\u200D\uD83E\uDDBA)?|\uDC3B(?:\u200D\u2744\uFE0F?)?|\uDC41\uFE0F?(?:\u200D\uD83D\uDDE8\uFE0F?)?|\uDC68(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:\uDC8B\u200D\uD83D)?\uDC68|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D(?:[\uDC68\uDC69]\u200D\uD83D(?:\uDC66(?:\u200D\uD83D\uDC66)?|\uDC67(?:\u200D\uD83D[\uDC66\uDC67])?)|[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uDC66(?:\u200D\uD83D\uDC66)?|\uDC67(?:\u200D\uD83D[\uDC66\uDC67])?)|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C(?:\uDFFB(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:\uDC8B\u200D\uD83D)?\uDC68\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D\uDC68\uD83C[\uDFFC-\uDFFF])))?|\uDFFC(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:\uDC8B\u200D\uD83D)?\uDC68\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D\uDC68\uD83C[\uDFFB\uDFFD-\uDFFF])))?|\uDFFD(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:\uDC8B\u200D\uD83D)?\uDC68\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D\uDC68\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])))?|\uDFFE(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:\uDC8B\u200D\uD83D)?\uDC68\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D\uDC68\uD83C[\uDFFB-\uDFFD\uDFFF])))?|\uDFFF(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:\uDC8B\u200D\uD83D)?\uDC68\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D\uDC68\uD83C[\uDFFB-\uDFFE])))?))?|\uDC69(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:\uDC8B\u200D\uD83D)?[\uDC68\uDC69]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D(?:[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uDC66(?:\u200D\uD83D\uDC66)?|\uDC67(?:\u200D\uD83D[\uDC66\uDC67])?|\uDC69\u200D\uD83D(?:\uDC66(?:\u200D\uD83D\uDC66)?|\uDC67(?:\u200D\uD83D[\uDC66\uDC67])?))|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C(?:\uDFFB(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:[\uDC68\uDC69]|\uDC8B\u200D\uD83D[\uDC68\uDC69])\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D[\uDC68\uDC69]\uD83C[\uDFFC-\uDFFF])))?|\uDFFC(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:[\uDC68\uDC69]|\uDC8B\u200D\uD83D[\uDC68\uDC69])\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D[\uDC68\uDC69]\uD83C[\uDFFB\uDFFD-\uDFFF])))?|\uDFFD(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:[\uDC68\uDC69]|\uDC8B\u200D\uD83D[\uDC68\uDC69])\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D[\uDC68\uDC69]\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])))?|\uDFFE(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:[\uDC68\uDC69]|\uDC8B\u200D\uD83D[\uDC68\uDC69])\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D[\uDC68\uDC69]\uD83C[\uDFFB-\uDFFD\uDFFF])))?|\uDFFF(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D\uD83D(?:[\uDC68\uDC69]|\uDC8B\u200D\uD83D[\uDC68\uDC69])\uD83C[\uDFFB-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83D[\uDC68\uDC69]\uD83C[\uDFFB-\uDFFE])))?))?|\uDC6F(?:\u200D[\u2640\u2642]\uFE0F?)?|\uDD75(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])?(?:\u200D[\u2640\u2642]\uFE0F?)?|\uDE2E(?:\u200D\uD83D\uDCA8)?|\uDE35(?:\u200D\uD83D\uDCAB)?|\uDE36(?:\u200D\uD83C\uDF2B\uFE0F?)?)|\uD83E(?:[\uDD0C\uDD0F\uDD18-\uDD1F\uDD30-\uDD34\uDD36\uDD77\uDDB5\uDDB6\uDDBB\uDDD2\uDDD3\uDDD5\uDEC3-\uDEC5\uDEF0\uDEF2-\uDEF8](?:\uD83C[\uDFFB-\uDFFF])?|[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD4\uDDD6-\uDDDD](?:\uD83C[\uDFFB-\uDFFF])?(?:\u200D[\u2640\u2642]\uFE0F?)?|[\uDDDE\uDDDF](?:\u200D[\u2640\u2642]\uFE0F?)?|[\uDD0D\uDD0E\uDD10-\uDD17\uDD20-\uDD25\uDD27-\uDD2F\uDD3A\uDD3F-\uDD45\uDD47-\uDD76\uDD78-\uDDB4\uDDB7\uDDBA\uDDBC-\uDDCC\uDDD0\uDDE0-\uDDFF\uDE70-\uDE7C\uDE80-\uDE88\uDE90-\uDEBD\uDEBF-\uDEC2\uDECE-\uDEDB\uDEE0-\uDEE8]|\uDD3C(?:\u200D[\u2640\u2642]\uFE0F?|\uD83C[\uDFFB-\uDFFF])?|\uDDD1(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83E\uDDD1))|\uD83C(?:\uDFFB(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D(?:\uD83D\uDC8B\u200D)?\uD83E\uDDD1\uD83C[\uDFFC-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83E\uDDD1\uD83C[\uDFFB-\uDFFF])))?|\uDFFC(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D(?:\uD83D\uDC8B\u200D)?\uD83E\uDDD1\uD83C[\uDFFB\uDFFD-\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83E\uDDD1\uD83C[\uDFFB-\uDFFF])))?|\uDFFD(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D(?:\uD83D\uDC8B\u200D)?\uD83E\uDDD1\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83E\uDDD1\uD83C[\uDFFB-\uDFFF])))?|\uDFFE(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D(?:\uD83D\uDC8B\u200D)?\uD83E\uDDD1\uD83C[\uDFFB-\uDFFD\uDFFF]|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83E\uDDD1\uD83C[\uDFFB-\uDFFF])))?|\uDFFF(?:\u200D(?:[\u2695\u2696\u2708]\uFE0F?|\u2764\uFE0F?\u200D(?:\uD83D\uDC8B\u200D)?\uD83E\uDDD1\uD83C[\uDFFB-\uDFFE]|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E(?:[\uDDAF-\uDDB3\uDDBC\uDDBD]|\uDD1D\u200D\uD83E\uDDD1\uD83C[\uDFFB-\uDFFF])))?))?|\uDEF1(?:\uD83C(?:\uDFFB(?:\u200D\uD83E\uDEF2\uD83C[\uDFFC-\uDFFF])?|\uDFFC(?:\u200D\uD83E\uDEF2\uD83C[\uDFFB\uDFFD-\uDFFF])?|\uDFFD(?:\u200D\uD83E\uDEF2\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])?|\uDFFE(?:\u200D\uD83E\uDEF2\uD83C[\uDFFB-\uDFFD\uDFFF])?|\uDFFF(?:\u200D\uD83E\uDEF2\uD83C[\uDFFB-\uDFFE])?))?)';

  /// MAC Address
  static String macAddress = r"^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$";

  ///  credit card number (e.g., 4111 1111 1111 1111) 15 and 16 digit both
  static String creditCard = r'^(\d{4}\s?\d{4}\s?\d{4}\s?\d{4})$';

  ///  YouTube video ID (e.g., dQw4w9WgXcQ)
  static String youtube =
      r"^(?:(?:https?:)?\/\/)?(?:www\.)?(?:youtube\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?)\/|\S*?[?&]v=)|youtu\.be\/)([a-zA-Z0-9_-]{11})";

  ///  Twitter username (e.g., @username)
  static String twitter = r"^@[a-zA-Z0-9_]{1,15}$";

  ///  Roman numerals
  // Matches Roman numerals from I to XXXIX
  static String romanNumerals = r'^(X{0,3})(IX|IV|V?I{0,3})$';

  ///  Sudoku puzzles
  /// Matching valid Sudoku puzzles in a string format (e.g., 53..7....6..195....98....6.8...6...34..8.3..17...2...6.6....28....419..5....8..79):
  static String sudoku = r"^[1-9\.]{81}$";

  ///  DNA sequences
  ///  RegExp dnaSequenceRegex = RegExp(r"^[ATCG]+$");
  static String dnaSequences = r"^[ATCG]+$";

  ///   Time (HH:MM 12-hour format)
  static String time12h =
      r'^(1[0-2]|0?[1-9]):([0-5]\d)\s?(AM|PM|am|pm)$'; // Matches a time in 12-hour format HH:MM AM/PM

  ///   Time (HH:MM 24-hour format)
  static String time24h =
      r'^([01]\d|2[0-3]):([0-5]\d)$'; // Matches a time in 24-hour format HH:MM

  /// Matches a positive integer
  static String positiveInteger = r'^\d+$';

  /// Matches a negative integer
  static String negativeInteger = r'^-\d+$';

  /// Decimal Number (e.g., 3.14)
  static String decimalNumber = r'^-?\d+(\.\d+)?$';

  /// Floating Point Number (e.g., 3.14)
  static String floatingPointNumber = r'^-?\d+(\.\d+)?$';

  /// Base64 Encoded String
  static String base64Encoded = r'^[A-Za-z0-9+/]+={0,2}$';

  /// JWT (JSON Web Token)
  static String jwt = r'^[A-Za-z0-9-_]+\.[A-Za-z0-9-_]+\.[A-Za-z0-9-_.+/=]*$';

  /// RGB Color Code (e.g., rgb(255, 0, 0))
  static String rgbColorCode = r'^rgb\(\s*\d+\s*,\s*\d+\s*,\s*\d+\s*\)$';

  /// HSL Color Code (e.g., hsl(0, 100%, 50%))
  static String hslColorCode = r'^hsl\(\s*\d+\s*,\s*\d+%?\s*,\s*\d+%?\s*\)$';

  /// SQL Statement (e.g., SELECT * FROM table)
  static String sqlStatement = r'^\s*(SELECT|INSERT|UPDATE|DELETE)\b.*$';

  /// ISIN (International Securities Identification Number)
  static String isin = r'^[A-Z]{2}[A-Z0-9]{9}[0-9]$';

  /// GPG Key ID
  static String gpgKeyId = r'^[0-9A-F]{8}$';

  /// MIME Type (e.g., text/plain, application/json)
  static String mimeType = r'^[\w\-]+\/[\w\-+\.]+(;[\w\-\.=]+)?$';

  /// Phone Number (U.S. format)
  static String phoneNumberUS =
      r'^\+?1?\s*\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$';

  /// JSON Object
  static String jsonObject = r'^\{(?:[^{}]|(?R))*\}$';

  // Matches a JSON array
  static String jsonArray = r'^\[(?:[^\[\]]|(?R))*\]$';

  // Matches a CSS selector
  static String cssSelector = r'^[.#]?[a-zA-Z0-9_-]+(:[a-zA-Z0-9_-]+)?$';

  // Matches an octal number
  static String octal = r'^[0-7]+$';

  // Scientific Notation (e.g., 1.23e+4)
  static String scientificNotation = r'^-?\d+(\.\d+)?(?:e[+-]?\d+)?$';

  // PHP Block (e.g., <?php ... ?>)
  static String phpBlock = r'<\?php(?:.*?)\?>';

  // Python Function Declaration
  static String pythonFunctionDeclaration = r'def\s+\w+\(.*?\)\s*:';

  // IBAN (International Bank Account Number)
  static String iban = r'\b[A-Z]{2}\d{2}[A-Z]{4}\d{7}([A-Z\d]{0,16})?\b';

  // IMEI (International Mobile Equipment Identity)
  static String imei = r'\b(?:\d{15}|\d{2}-\d{6}-\d{6}-\d{1})\b';

  // International Standard Music Number (ISMN)
  static String ismn = r'\bM\d{9}\b';

  // Indian Postal Code (PIN)
  static String indianPostalCode = r'\b\d{3}\s?\d{3}\b';

  // Canadian Postal Code
  static String canadianPostalCode = r'\b[A-Za-z]\d[A-Za-z]\s*\d[A-Za-z]\d\b';

  // Australian Postal Code
  static String australianPostalCode = r'\b\d{4}\b';

  // German Postal Code (PLZ)
  static String germanPostalCode = r'\b\d{5}\b';

  // French Postal Code (Code Postal)
  static String frenchPostalCode = r'\b\d{2}\s?\d{3}\b';

  // Italian Postal Code (CAP)
  static String italianPostalCode = r'\b\d{5}\b';

  // Spanish Postal Code (Código Postal)
  static String spanishPostalCode = r'\b\d{5}\b';

  // Japanese Postal Code (郵便番号)
  static String japanesePostalCode = r'\b\d{3}-\d{4}\b';

  // South African Postal Code
  static String southAfricanPostalCode = r'\b\d{4}\b';

  // South African Postal Code
  static String brazilianPostalCode = r'\b\d{5}-\d{3}\b';

  // Russian Postal Code (Индекс)
  static String russianPostalCode = r'\b\d{6}\b';

  // Latitude Longitude Coordinates (Decimal)
  static String latLongCoordinatesDecimal =
      r'\b[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)\b';

  // Google Analytics Tracking ID (UA-XXXXX-Y)
  static String googleAnalyticsTrackingId = r'\bUA-\d{4,9}-\d{1,2}\b';

  // Google Cloud Storage URI
  static String googleCloudStorageUri = r'\bgs://[a-zA-Z0-9._/-]+\b';

  // JDBC Connection String
  static String jdbcConnectionString = r'\bjdbc:[a-zA-Z0-9]+://[^/]+/\w+\b';

  // Pangram (Sentence with all letters)
  static String pangram =
      r'\b(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}\b';

  // Indian Aadhar Card Number (12 digits):
  static String aadharCardNumberIndia = r'^\d{4}\s\d{4}\s\d{4}$';

  // Indian PAN Card Number (AAAAA9999A format):
  static String panCardNumberIndia = r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$';

  // Indian Passport Number (Alphanumeric, 7 characters):
  static String passportNumberIndia = r'^[A-Z0-9]{7}$';

  // Indian Driving License Number (Alphanumeric, 15 characters):
  static String drivingLicenseNumberIndia = r'^[A-Z0-9]{15}$';

  // Indian Voter ID Card Number (Alphanumeric, 10 characters):
  static String voterIdNumberIndia = r'^[A-Z0-9]{10}$';

  // Indian GST Number (Alphanumeric, 15 characters):
  static String gstNumberIndia =
      r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[0-9]{1}[A-Z]{1}[0-9A-Z]{1}$';

  // Indian IFSC Code (Alphanumeric, 11 characters):
  static String ifscCodeIndia = r'^[A-Z]{4}0[A-Z0-9]{6}$';

  // Indian Vehicle Registration Number (Alphanumeric, varies by state):
  static String vehicleRegNumberIndia =
      r'^[A-Z]{2}\s[0-9]{2}\s[A-Z]{1,2}\s[0-9]{1,4}$';

  // Indian Ration Card Number (Alphanumeric, varies by state):
  static String rationCardNumberIndia = r'^[A-Z]{2}\s[0-9]{12}$';

  // Indian Pincode (Numeric, 6 digits):
  static String pinCodeIndia = r'^\d{6}$';

  // USA Social Security Number (SSN):
  static String ssnUSA = r'^\d{3}-\d{2}-\d{4}$';

  // USA Passport Number:
  static String passportNumberUSA = r'^[a-zA-Z0-9]{9}$';

  // USA Driver's License Number:
  static String drivingLicenseNumberUSA = r'^[A-Z0-9]{10}$';

  // USA Vehicle Identification Number (VIN):
  static String vinUSA = r'^[A-HJ-NPR-Za-hj-npr-z\d]{17}$';

  // USA Federal Taxpayer Identification Number (TIN):
  static String tinUSA = r'^\d{9}$';

  // USA Employer Identification Number (EIN):
  static String einUSA = r'^\d{2}-\d{7}$';

  // USA Medicare Number (HICN):
  static String medicareNumberUSA = r'^\d{9}[A-Za-z]{1,2}$';

  //USA Federal Firearms License (FFL) Number:
  static String fflNumberUSA = r'^\d{8}$';

  //USA Federal Communications Commission (FCC) Registration Number:
  static String fccNumberUSA = r'^\d{9}$';

  //USA Department of Transportation (DOT) Number:
  static String dotNumberUSA = r'^\d{6}$';

  ///Resident Identity Card Number:
  static String residentIdChina = r'^\d{18}|\d{15}[\dxX]$';

  /// Passport Number:
  static String passportNumberChina = r'^[EeGg]\d{8}$';

  /// Hong Kong Identity Card Number (HKID):
  static String hkidChina = r'^[A-Z]\d{6}\([0-9A]\)$';

  /// Macau Resident Identity Card Number:
  static String macauIdChina = r'^\d{10}\([0-9]\)$';

  /// Taiwan Resident Certificate Number:
  static String twIdChina = r'^[A-Z][0-9]{9}$';

  /// Mainland Travel Permit for Taiwan Residents Number:

  static String twPermitChina = r'^[0-9]{9}$';

  /// Mainland Travel Permit for Hong Kong and Macau Residents Number:
  static String hkMacauPermitChina = r'^[HMhm]{1}([0-9]{10}|[0-9]{12})$';

  /// Mainland Travel Permit for Taiwan Residents (Hong Kong and Macau) Number:
  static String twPermitHkMacauChina = r'^[0-9]{8}$';

  /// Mainland Travel Permit for Hong Kong and Macau Residents to the Mainland Number:
  static String hkMacauPermitToMainlandChina = r'^[0-9]{9}$';

  /// Mainland Travel Permit for Taiwan Residents to the Mainland Number:
  static String twPermitToMainlandChina = r'^[0-9]{9}$';

  /// National Identification Number (NIK):
  static String nikIndonesia = r'^[1-9]\d{15}$';

  /// Family Card Number (KK):
  static String kkIndonesia = r'^\d{16}$';

  /// Driving License Number:
  static String drivingLicenseNumberIndonesia = r'^\d{12}$';

  /// Passport Number:
  static String passportNumberIndonesia = r'^[A-Z]\d{6}$';

  /// Taxpayer Identification Number (NPWP):
  static String npwpIndonesia = r'^\d{15}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberIndonesia = r'^[A-Z]{1,2}\d{1,4}[A-Z]{1,3}$';

  /// National Social Security Number (BPJS Ketenagakerjaan):
  static String bpjsIndonesia = r'^\d{12}$';

  /// Health Insurance Number (BPJS Kesehatan):
  static String bpjsHealthIndonesia = r'^\d{13}$';

  /// Student Identification Number:
  static String studentIdIndonesia = r'^\d{8}$';

  /// Bank Account Number:
  static String bankAccountNumberIndonesia = r'^\d{9,18}$';

  /// Computerized National Identity Card (CNIC) Number:
  static String cnicPakistan = r'^\d{5}-\d{7}-\d{1}$';

  /// National Tax Number (NTN):
  static String ntnPakistan = r'^\d{7}-\d$';

  /// Sales Tax Registration Number (STRN):
  static String strnPakistan = r'^\d{9}$';

  /// Driving License Number:
  static String drivingLicenseNumberPakistan = r'^\d{5}-\d{5}-\d{1}$';

  /// Passport Number:
  static String passportNumberPakistan = r'^[A-Z]{2}\d{7}$';

  /// National Identity Card for Overseas Pakistanis (NICOP) Number:
  static String nicopPakistan = r'^[A-Z]\d{12}$';

  /// Pakistan Origin Card (POC) Number:
  static String pocPakistan = r'^[A-Z]\d{12}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberPakistan = r'^[A-Z]{2}-\d{2}-\d{4}$';

  /// Bank Account Number (IBAN):
  static String ibanPakistan = r'^PK\d{2}[A-Z]{4}\d{16}$';

  /// National Savings Organization (NSO) Account Number:
  static String nsoAccountPakistan = r'^\d{12}$';

  /// CPF (Cadastro de Pessoas Físicas) Number:
  static String cpfBrazil = r'^\d{3}\.\d{3}\.\d{3}-\d{2}$';

  /// RG (Registro Geral) Number:
  static String rgBrazil = r'^\d{2}\.\d{3}\.\d{3}-\d$';

  /// Passport Number:
  static String passportNumberBrazil = r'^[A-Z]{2}\d{6}$';

  /// National Driver's License Number:
  static String drivingLicenseNumberBrazil = r'^\d{9}-\d$';

  /// Voter ID Card (Título de Eleitor) Number:
  static String voterIdBrazil = r'^\d{12}$';

  /// National Military Service Document (Certificado de Alistamento Militar) Number:
  static String militaryServiceBrazil = r'^\d{7}\.\d{3}\/\d{4}-\d$';

  /// National Health Card (Cartão Nacional de Saúde) Number:
  static String healthCardBrazil = r'^\d{15}$';

  /// Work Permit Card (Carteira de Trabalho e Previdência Social) Number:
  static String workPermitBrazil = r'^\d{8}$';

  /// Professional Card (Carteira de Identidade Profissional) Number:
  static String professionalCardBrazil = r'^\d{8}$';

  /// CadÚnico (Cadastro Único para Programas Sociais do Governo Federal) Number:
  static String cadUnicoBrazil = r'^\d{14}$';

  /// National Identification Number (NIN):
  static String ninNigeria = r'^\d{11}$';

  /// International Passport Number:
  static String passportNumberNigeria = r'^[A-Z]{2}\d{7}$';

  /// National Driver's License Number:
  static String drivingLicenseNumberNigeria = r'^\d{9}$';

  /// Bank Verification Number (BVN):
  static String bvnNigeria = r'^\d{11}$';

  /// Tax Identification Number (TIN):
  static String tinNigeria = r'^\d{10}$';

  /// National Identity Management Commission (NIMC) Number:
  static String nimcNigeria = r'^\d{11}$';

  /// Permanent Voter's Card (PVC) Number:
  static String pvcNigeria = r'^[A-Z]{3}\d{7}$';

  /// National Health Insurance Scheme (NHIS) Number:
  static String nhisNigeria = r'^[A-Z]{3}\d{6}$';

  /// National Pension Commission (PenCom) Number:
  static String penComNigeria = r'^\d{15}$';

  /// Federal Road Safety Commission (FRSC) Number:
  static String frscNigeria = r'^[A-Z]{3}\d{6}$';

  /// National ID Card Number (NID):
  static String nidBangladesh = r'^[0-9]{10}$';

  /// Birth Registration Certificate Number:
  static String birthRegBangladesh = r'^\d{17}$';

  /// Driving License Number:
  static String drivingLicenseNumberBangladesh = r'^\d{10}$';

  /// Passport Number:
  static String passportNumberBangladesh = r'^[A-Z]{2}\d{7}$';

  /// Tax Identification Number (TIN):
  static String tinBangladesh = r'^\d{11}$';

  /// Voter ID Card Number:
  static String voterIdBangladesh = r'^[0-9]{17}$';

  /// National Health Service Card Number:
  static String healthCardBangladesh = r'^\d{9}$';

  /// Freedom Fighter Certificate Number:
  static String freedomFighterCertBangladesh = r'^\d{17}$';

  /// Arms License Number:
  static String armsLicenseBangladesh = r'^\d{10}$';

  /// Trade License Number:
  static String tradeLicenseBangladesh = r'^[0-9]{11}$';

  /// Passport Number:
  static String passportNumberRussia = r'^\d{10}$';

  /// International Passport Number:
  static String intPassportNumberRussia = r'^\d{9}$';

  /// Internal Passport Number:
  static String internalPassportNumberRussia = r'^\d{9}$';

  /// Birth Certificate Number:
  static String birthCertNumberRussia = r'^\d{14}$';

  /// Driver's License Number:
  static String drivingLicenseNumberRussia = r'^\d{10}$';

  /// Taxpayer Identification Number (INN):
  static String innRussia = r'^\d{10}$';

  /// Individual Insurance Account Number:
  static String insuranceAccountRussia = r'^\d{15}$';

  /// Pension Insurance Number:
  static String pensionInsuranceNumberRussia = r'^\d{15}$';

  /// State Pension Insurance Number:
  static String statePensionInsuranceNumberRussia = r'^\d{15}$';

  /// Personal Account Number (PAN):
  static String panRussia = r'^\d{11}$';

  /// CURP (Clave Única de Registro de Población) Number:
  static String curpMexico =
      r'^[A-Z]{4}\d{6}[HM][A-Z]{2}[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{1}$';

  /// Voter ID Card (Credencial para Votar) Number:
  static String voterIdMexico = r'^\d{18}$';

  /// Passport Number:
  static String passportNumberMexico = r'^[A-Z]{1,2}\d{6}$';

  /// Driver's License Number:
  static String drivingLicenseNumberMexico = r'^[A-Z]{3}\d{11}$';

  /// Taxpayer Registry Number (RFC):
  static String rfcMexico = r'^[A-Z]{4}\d{6}[A-Z0-9]{3}$';

  /// National Foreigners Registry Number (FM2 and FM3):
  static String foreignersRegistryMexico = r'^\d{8}\w{3}$';

  /// IMSS (Mexican Social Security Institute) Number:
  static String imssMexico = r'^\d{11}$';

  /// INFONAVIT (National Workers' Housing Fund Institute) Number:
  static String infonavitMexico = r'^\d{11}$';

  /// NUT (Unique Worker Number) Number:
  static String nutMexico = r'^\d{11}$';

  /// Bank Account Number:
  static String bankAccountNumberMexico = r'^\d{10,18}$';

  /// Individual Number (My Number):
  static String myNumberJapan = r'^\d{12}$';

  /// Passport Number:
  static String passportNumberJapan = r'^[A-Z]{2}\d{7}$';

  /// Resident Card Number:
  static String residentCardJapan = r'^[0-9]{12}$';

  /// Driver's License Number:
  static String drivingLicenseNumberJapan = r'^\d{12}$';

  /// Health Insurance Number:
  static String healthInsuranceNumberJapan = r'^\d{11}$';

  /// Pension Number:
  static String pensionNumberJapan = r'^\d{10}$';

  /// National Tax Number (Nanbā):
  static String taxNumberJapan = r'^\d{10}$';

  /// Social Insurance Number (Shakai Hoken Hōshōshashin):
  static String socialInsuranceNumberJapan = r'^\d{10}$';

  /// Basic Resident Registration Number:
  static String residentRegistrationNumberJapan = r'^\d{12}$';

  /// Bank Account Number:
  static String bankAccountNumberJapan = r'^\d{7,14}$';

  /// Taxpayer Identification Number (TIN):
  ///
  static String tinEthiopia = r'^[0-9A-Z]{10}$';

  /// Passport Number:
  static String passportNumberEthiopia = r'^[A-Z]{3}\d{7}$';

  /// Driving License Number:
  static String drivingLicenseNumberEthiopia = r'^\d{9}$';

  /// Birth Certificate Number:
  static String birthCertNumberEthiopia = r'^\d{17}$';

  /// ID Card Number:
  static String idCardNumberEthiopia = r'^[0-9A-Z]{10}$';

  /// National Bank Account Number:
  static String bankAccountNumberEthiopia = r'^\d{16}$';

  /// Social Security Number (SSN):
  static String ssnEthiopia = r'^\d{8}$';

  /// Driver's License Number:
  static String driverLicenseNumberEthiopia = r'^\d{10}$';

  /// Voters Identification Card Number:
  static String voterIdEthiopia = r'^[0-9A-Z]{10}$';

  /// Foreign Resident ID Card Number:
  static String foreignIdEthiopia = r'^[0-9A-Z]{10}$';

  //  **Philippines**
  /// National ID Number:
  static String nationalIdPhilippines = r'^\d{12}$';

  /// Passport Number:
  static String passportNumberPhilippines = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:
  static String drivingLicenseNumberPhilippines = r'^\d{16}$';

  /// Social Security System (SSS) Number:
  static String sssNumberPhilippines = r'^\d{10}$';

  /// Tax Identification Number (TIN):
  static String tinPhilippines = r'^\d{12}$';

  /// Unified Multi-Purpose Identification (UMID) Card Number:
  static String umidNumberPhilippines = r'^\d{12}$';

  /// Postal ID Number:
  static String postalIdPhilippines = r'^\d{12}$';

  /// PhilHealth Number:
  static String philHealthNumberPhilippines = r'^\d{12}$';

  /// Professional Regulation Commission (PRC) ID Number:
  static String prcIdPhilippines = r'^\d{7}$';

  /// Voter ID Card Number:
  static String voterIdPhilippines = r'^\d{12}$';

  // **Egypt**
  /// National ID Number:
  static String nationalIdEgypt = r'^\d{14}$';

  /// Passport Number:
  static String passportNumberEgypt = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:
  static String drivingLicenseNumberEgypt = r'^\d{15}$';

  /// Tax Card Number:
  static String taxCardEgypt = r'^\d{10}$';

  /// Military ID Number:
  static String militaryIdEgypt = r'^\d{9}$';

  /// Social Insurance Number:
  static String socialInsuranceEgypt = r'^\d{9}$';

  /// Health Insurance Number:
  static String healthInsuranceEgypt = r'^\d{12}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberEgypt = r'^\d{5}-\d{4}$';

  /// Student ID Number:
  static String studentIdEgypt = r'^\d{10}$';

  /// Bank Account Number:
  static String bankAccountNumberEgypt = r'^\d{12}$';

  // **Vietnam**
  /// Citizen ID Number:
  static String citizenIdVietnam = r'^\d{9}$';

  /// Passport Number:
  static String passportNumberVietnam = r'^\d{8}$';

  /// Driver's License Number:
  static String drivingLicenseNumberVietnam = r'^\d{8}$';

  /// Tax Identification Number (TIN):
  static String tinVietnam = r'^\d{10}$';

  /// Social Insurance Number:
  static String socialInsuranceVietnam = r'^\d{10}$';

  /// Health Insurance Number:
  static String healthInsuranceVietnam = r'^\d{10}$';

  /// Bank Account Number:
  static String bankAccountNumberVietnam = r'^\d{10,15}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberVietnam = r'^\d{5}-\d{5}$';

  /// Student ID Number:
  static String studentIdVietnam = r'^\d{8}$';

  /// Work Permit Number:
  static String workPermitVietnam = r'^\d{5}-\d{5}$';

  // **DR Congo**
  /// National Identification Number:
  static String nationalIdCongo = r'^[A-Z]\d{7}[A-Z]$';

  /// Passport Number:
  static String passportNumberCongo = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:
  static String drivingLicenseNumberCongo = r'^\d{9}$';

  /// Taxpayer Identification Number (TIN):
  static String tinCongo = r'^\d{7}$';

  /// Social Security Number:
  static String ssnCongo = r'^\d{11}$';

  /// Health Insurance Number:
  static String healthInsuranceCongo = r'^\d{8}$';

  /// Voter ID Card Number:
  static String voterIdCongo = r'^\d{12}$';

  /// Student ID Number:
  static String studentIdCongo = r'^\d{8}$';

  /// Bank Account Number:
  static String bankAccountNumberCongo = r'^\d{10}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberCongo = r'^\d{5}-\d{5}$';

  // **Turkey**
  ///National Identification Number:
  static String nationalIdTurkey = r'^\d{11}$';

  ///Passport Number:
  static String passportNumberTurkey = r'^\d{8}$';

  ///Driver's License Number:
  static String drivingLicenseNumberTurkey = r'^\d{12}$';

  ///Tax Identification Number (TIN):
  static String tinTurkey = r'^\d{10}$';

  ///Social Security Number:
  static String ssnTurkey = r'^\d{10}$';

  ///Health Insurance Number:
  static String healthInsuranceTurkey = r'^\d{11}$';

  ///Bank Account Number:
  static String bankAccountNumberTurkey = r'^\d{16}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberTurkey = r'^\d{2}-\d{5}$';

  ///Student ID Number:
  static String studentIdTurkey = r'^\d{8}$';

  ///Work Permit Number:
  static String workPermitTurkey = r'^\d{7}$';

  // **Iran**
  ///National Identification Number:
  static String nationalIdIran = r'^\d{10}$';

  ///Passport Number:
  static String passportNumberIran = r'^[A-Z]{2}\d{7}$';

  ///Driver's License Number:
  static String drivingLicenseNumberIran = r'^\d{12}$';

  ///Tax Identification Number (TIN):
  static String tinIran = r'^\d{10}$';

  ///Social Security Number:
  static String ssnIran = r'^\d{11}$';

  ///Health Insurance Number:
  static String healthInsuranceIran = r'^\d{10}$';

  ///Bank Account Number:
  static String bankAccountNumberIran = r'^\d{19}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberIran = r'^\d{3}-\d{3}-\d{5}$';

  ///Student ID Number:
  static String studentIdIran = r'^\d{8}$';

  ///Work Permit Number:
  static String workPermitIran = r'^\d{8}$';

  // **Germany**
  ///Personal Identity Card Number (Personalausweis):
  static String idCardGermany = r'^\d{10}$';

  ///Passport Number:
  static String passportNumberGermany = r'^[A-Z]{2}\d{7}$';

  ///Driver's License Number:
  static String drivingLicenseNumberGermany = r'^\d{10}$';

  ///Tax Identification Number (TIN):
  static String tinGermany = r'^\d{11}$';

  ///Social Security Number:
  static String ssnGermany = r'^\d{12}$';

  ///Health Insurance Number:
  static String healthInsuranceGermany = r'^\d{10}$';

  ///Bank Account Number:
  static String bankAccountNumberGermany = r'^\d{18}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberGermany = r'^[A-Z]{1,3}-\d{1,4}-[A-Z]{1,2}$';

  ///Student ID Number:
  static String studentIdGermany = r'^\d{8}$';

  ///Work Permit Number:
  static String workPermitGermany = r'^\d{11}$';

  // **Thailand**
  ///National Identification Number:
  static String nationalIdThailand = r'^\d{13}$';

  ///Passport Number:
  static String passportNumberThailand = r'^[A-Z]\d{7}$';

  ///Driver's License Number:
  static String drivingLicenseNumberThailand = r'^\d{10}$';

  ///Tax Identification Number (TIN):
  static String tinThailand = r'^\d{13}$';

  ///Social Security Number:
  static String ssnThailand = r'^\d{13}$';

  ///Health Insurance Number:
  static String healthInsuranceThailand = r'^\d{12}$';

  ///Bank Account Number:
  static String bankAccountNumberThailand = r'^\d{10,16}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberThailand = r'^\d{2}-\d{4}$';

  ///Student ID Number:
  static String studentIdThailand = r'^\d{10}$';

  ///Work Permit Number:
  static String workPermitThailand = r'^\d{11}$';

  // **United Kingdom**
  ///National Insurance Number:
  static String nationalInsuranceUK =
      r'^[A-CEGHJ-PR-TW-Z][A-CEGHJ-NPR-TW-Z]\d{6}[A-D]$';

  ///Passport Number:
  static String passportNumberUK = r'^[0-9]{9}$';

  ///Driver's License Number:
  static String drivingLicenseNumberUK = r'^[A-Z]{2}\d{6}[A-Z]{2}$';

  ///Tax Identification Number (TIN):
  static String tinUK = r'^[0-9A-Z]{10}$';

  ///National Health Service (NHS) Number:
  static String nhsNumberUK = r'^\d{10}$';

  ///Bank Account Number (sort code + account number):
  static String bankAccountNumberUK = r'^\d{6}\s?\d{8}$';

  ///Student ID Number:
  static String studentIdUK = r'^[0-9A-Z]{10}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberUK = r'^[A-Z]{2}\d{2}\s?[A-Z]{3}$';

  ///Work Permit Number:
  static String workPermitUK = r'^\d{9}$';

  ///National Rail Travel Card Number:
  static String railTravelCardUK = r'^\d{16}$';

  // **France**
  ///National Identification Number (NIR):
  static String nationalIdFrance = r'^\d{13}$';

  ///Passport Number:
  static String passportNumberFrance = r'^[0-9A-Z]{9}$';

  ///Driver's License Number:
  static String drivingLicenseNumberFrance = r'^[0-9A-Z]{12}$';

  ///Tax Identification Number (TIN):
  static String tinFrance = r'^[0-9A-Z]{14}$';

  ///Social Security Number:
  static String ssnFrance = r'^\d{13}$';

  ///Health Insurance Number:
  static String healthInsuranceFrance = r'^\d{11}$';

  ///Bank Account Number:
  static String bankAccountNumberFrance = r'^\d{10,11}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberFrance = r'^[A-Z]{2}-\d{3}-[A-Z]{2}$';

  ///Student ID Number:
  static String studentIdFrance = r'^[0-9A-Z]{10}$';

  ///Work Permit Number:
  static String workPermitFrance = r'^\d{9}$';

  /// **Italy**
  /// National Identification Number (Codice Fiscale):
  static String codiceFiscaleItaly =
      r'^[A-Z]{6}\d{2}[A-Z]\d{2}[A-Z]\d{3}[A-Z]$';

  /// Passport Number:
  static String passportNumberItaly = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:
  static String drivingLicenseNumberItaly = r'^\d{16}$';

  /// Tax Identification Number (TIN):
  static String tinItaly = r'^\d{11}$';

  /// Health Insurance Number:
  static String healthInsuranceItaly = r'^\d{10}$';

  /// Social Security Number (INPS):
  static String inpsNumberItaly = r'^\d{9}$';

  /// Bank Account Number:
  static String bankAccountNumberItaly = r'^\d{12}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberItaly = r'^[A-Z]{2}\d{3}[A-Z]{2}$';

  /// Student ID Number:
  static String studentIdItaly = r'^\d{10}$';

  /// Work Permit Number:
  static String workPermitItaly = r'^\d{9}$';

  // **Tanzania**
  /// National Identification Number:
  static String nationalIdTanzania = r'^\d{10}$';

  /// Passport Number:
  static String passportNumberTanzania = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:
  static String drivingLicenseNumberTanzania = r'^\d{9}$';

  /// Taxpayer Identification Number (TIN):
  static String tinTanzania = r'^\d{10}$';

  /// Social Security Number:
  static String ssnTanzania = r'^\d{9}$';

  /// Health Insurance Number:
  static String healthInsuranceTanzania = r'^\d{10}$';

  /// Bank Account Number:
  static String bankAccountNumberTanzania = r'^\d{10,16}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberTanzania = r'^[A-Z]{2}\d{5,7}$';

  /// Student ID Number:
  static String studentIdTanzania = r'^\d{7}$';

  /// Work Permit Number:
  static String workPermitTanzania = r'^\d{10}$';

  // **South Africa**
  /// Identity Number:
  static String identityNumberSouthAfrica = r'^\d{13}$';

  /// Passport Number:
  static String passportNumberSouthAfrica = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:
  static String drivingLicenseNumberSouthAfrica = r'^\d{13}$';

  /// Taxpayer Identification Number (TIN):
  static String tinSouthAfrica = r'^\d{10}$';

  /// Social Security Number:
  static String ssnSouthAfrica = r'^\d{13}$';

  /// Health Insurance Number:
  static String healthInsuranceSouthAfrica = r'^\d{12}$';

  /// Bank Account Number:
  static String bankAccountNumberSouthAfrica = r'^\d{10,14}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberSouthAfrica = r'^[A-Z]{2}\d{1,6}[A-Z]{2}$';

  /// Student ID Number:
  static String studentIdSouthAfrica = r'^\d{10}$';

  /// Work Permit Number:
  static String workPermitSouthAfrica = r'^\d{9}$';

  // **Myanmar**
  /// National Registration Card Number:
  static String nrcNumberMyanmar = r'^\d{1,2}/[A-Z]{2}\d{6}$';

  /// Passport Number:
  static String passportNumberMyanmar = r'^\d{7,9}$';

  /// Driver's License Number:
  static String drivingLicenseNumberMyanmar = r'^[A-Z]\d{6}$';

  /// Tax Identification Number (TIN):
  static String tinMyanmar = r'^[0-9A-Z]{10}$';

  /// Social Security Number:
  static String ssnMyanmar = r'^\d{12}$';

  /// Health Insurance Number:
  static String healthInsuranceMyanmar = r'^[0-9A-Z]{8}$';

  /// Bank Account Number:
  static String bankAccountNumberMyanmar = r'^\d{8,11}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberMyanmar = r'^\d{2}/[A-Z]{1,2}/\d{5,6}$';

  /// Student ID Number:
  static String studentIdMyanmar = r'^[0-9A-Z]{5,8}$';

  /// Work Permit Number:
  static String workPermitMyanmar = r'^[0-9A-Z]{8}$';

  // **Kenya**
  /// National Identification Number:
  static String nationalIdKenya = r'^\d{8,14}$';

  /// Passport Number:
  static String passportNumberKenya = r'^[A-Z]{2}\d{8}$';

  /// Driver's License Number:
  static String drivingLicenseNumberKenya = r'^\d{10}$';

  /// Taxpayer Identification Number (TIN):
  static String tinKenya = r'^\d{9}$';

  /// Social Security Number:
  static String ssnKenya = r'^\d{10}$';

  /// Health Insurance Number:
  static String healthInsuranceKenya = r'^\d{10}$';

  /// Bank Account Number:
  static String bankAccountNumberKenya = r'^\d{10,12}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberKenya = r'^[A-Z]{3}\d{3}[A-Z]{3}$';

  /// Student ID Number:
  static String studentIdKenya = r'^[0-9A-Z]{8}$';

  /// Work Permit Number:
  static String workPermitKenya = r'^\d{8}$';

  // **South Korea**
  /// Resident Registration Number:
  static String residentRegistrationNumberKorea = r'^\d{6}-\d{7}$';

  /// Passport Number:
  static String passportNumberKorea = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:
  static String drivingLicenseNumberKorea = r'^\d{12}$';

  /// Tax Identification Number (TIN):
  static String tinKorea = r'^\d{13}$';

  /// Social Security Number:
  static String ssnKorea = r'^\d{13}$';

  /// Health Insurance Number:
  static String healthInsuranceKorea = r'^\d{10}$';

  /// Bank Account Number:
  static String bankAccountNumberKorea = r'^\d{11,16}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberKorea = r'^\d{2}-\d{2}-\d{4}-\d{1,2}$';

  /// Student ID Number:
  static String studentIdKorea = r'^\d{10}$';

  /// Work Permit Number:
  static String workPermitKorea = r'^\d{10}$';

  // **Colombia**
  /// National Identification Number (Cédula de Ciudadanía):
  static String cedulaColombia = r'^\d{10,12}$';

  /// Passport Number:
  static String passportNumberColombia = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:
  static String drivingLicenseNumberColombia = r'^\d{12}$';

  /// Tax Identification Number (NIT):
  static String nitColombia = r'^\d{10}$';

  /// Social Security Number:
  static String ssnColombia = r'^\d{10}$';

  /// Health Insurance Number:
  static String healthInsuranceColombia = r'^\d{12}$';

  /// Bank Account Number:
  static String bankAccountNumberColombia = r'^\d{10,12}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberColombia = r'^[A-Z]{3}\d{3}$';

  /// Student ID Number:
  static String studentIdColombia = r'^\d{8}$';

  /// Work Permit Number:
  static String workPermitColombia = r'^\d{8}$';

  // **Spain**
  /// National Identification Number (DNI):
  static String dniSpain = r'^\d{8}[A-Z]$';

  /// Passport Number:
  static String passportNumberSpain = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:
  static String drivingLicenseNumberSpain = r'^\d{9}$';

  /// Tax Identification Number (NIF):
  static String nifSpain = r'^[A-Z]\d{7}[A-Z]$';

  /// Social Security Number:
  static String ssnSpain = r'^\d{12}$';

  /// Health Insurance Number:
  static String healthInsuranceSpain = r'^\d{12}$';

  /// Bank Account Number:
  static String bankAccountNumberSpain = r'^\d{20}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberSpain = r'^[0-9]{4}[A-Z]{3}$';

  /// Student ID Number:
  static String studentIdSpain = r'^[A-Z]\d{8}$';

  /// Work Permit Number:
  static String workPermitSpain = r'^\d{9}[A-Z]$';

  // **Uganda**
  /// National Identification Number:
  static String nationalIdUganda = r'^[A-Z0-9]{14}$';

  /// Passport Number:
  static String passportNumberUganda = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:
  static String drivingLicenseNumberUganda = r'^\d{10}$';

  /// Taxpayer Identification Number (TIN):
  static String tinUganda = r'^\d{10}$';

  /// Social Security Number:
  static String ssnUganda = r'^\d{10}$';

  /// Health Insurance Number:
  static String healthInsuranceUganda = r'^\d{10}$';

  /// Bank Account Number:
  static String bankAccountNumberUganda = r'^\d{10,16}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberUganda = r'^[A-Z]{3}\d{3}[A-Z]{2}$';

  /// Student ID Number:
  static String studentIdUganda = r'^\d{5,8}$';

  /// Work Permit Number:
  static String workPermitUganda = r'^\d{10}$';

  // **Argentina**
  /// National Identification Number (DNI):
  static String dniArgentina = r'^\d{7,8}$';

  /// Passport Number:
  static String passportNumberArgentina = r'^[A-Z]{3}\d{6}$';

  /// Driver's License Number:
  static String drivingLicenseNumberArgentina = r'^\d{12}$';

  /// Tax Identification Number (CUIT):
  static String cuitArgentina = r'^\d{11}$';

  /// Social Security Number:
  static String ssnArgentina = r'^\d{11}$';

  /// Health Insurance Number:
  static String healthInsuranceArgentina = r'^\d{11}$';

  /// Bank Account Number:
  static String bankAccountNumberArgentina = r'^\d{14}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberArgentina = r'^[A-Z]{3}\d{3}[A-Z]{2}$';

  /// Student ID Number:
  static String studentIdArgentina = r'^\d{7}$';

  /// Work Permit Number:
  static String workPermitArgentina = r'^\d{8}$';

  // **Algeria**
  //// National Identification Number (Numéro d'Identification Nationale):
  static String nationalIdAlgeria = r'^\d{12}$';

  //// Passport Number:
  static String passportNumberAlgeria = r'^\d{9}$';

  //// Driver's License Number:
  static String drivingLicenseNumberAlgeria = r'^\d{9}$';

  //// Tax Identification Number (NIF):
  static String nifAlgeria = r'^\d{9}$';

  //// Social Security Number:
  static String ssnAlgeria = r'^\d{9}$';

  //// Health Insurance Number:
  static String healthInsuranceAlgeria = r'^\d{9}$';

  //// Bank Account Number:
  static String bankAccountNumberAlgeria = r'^\d{16}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberAlgeria = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdAlgeria = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitAlgeria = r'^\d{8}$';

  // **Sudan**
  //// National Identification Number:
  static String nationalIdSudan = r'^\d{8}$';

  //// Passport Number:
  static String passportNumberSudan = r'^\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberSudan = r'^\d{12}$';

  //// Tax Identification Number (TIN):
  static String tinSudan = r'^\d{9}$';

  //// Social Security Number:
  static String ssnSudan = r'^\d{9}$';

  //// Health Insurance Number:
  static String healthInsuranceSudan = r'^\d{9}$';

  //// Bank Account Number:
  static String bankAccountNumberSudan = r'^\d{10,16}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberSudan = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdSudan = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitSudan = r'^\d{8}$';

  // **Ukraine**
  //// National Identification Number (Ідентифікаційний номер):
  static String identificationNumberUkraine = r'^\d{10}$';

  //// Passport Number:
  static String passportNumberUkraine = r'^\d{8}$';

  //// Driver's License Number:
  static String drivingLicenseNumberUkraine = r'^\d{9}$';

  //// Tax Identification Number (Податковий номер):
  static String taxNumberUkraine = r'^\d{10}$';

  //// Social Security Number:
  static String ssnUkraine = r'^\d{9}$';

  //// Health Insurance Number:
  static String healthInsuranceUkraine = r'^\d{9}$';

  //// Bank Account Number:
  static String bankAccountNumberUkraine = r'^\d{6,14}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberUkraine = r'^[A-Z]{2}\d{5}[A-Z]{2}$';

  //// Student ID Number:
  static String studentIdUkraine = r'^\d{6,10}$';

  //// Work Permit Number:
  static String workPermitUkraine = r'^\d{9}$';

  // **Iraq**
  //// National Identification Number:
  static String nationalIdIraq = r'^\d{11}$';

  //// Passport Number:
  static String passportNumberIraq = r'^[A-Z]{2}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberIraq = r'^\d{9}$';

  //// Tax Identification Number (TIN):
  static String tinIraq = r'^\d{10}$';

  //// Social Security Number:
  static String ssnIraq = r'^\d{10}$';

  //// Health Insurance Number:
  static String healthInsuranceIraq = r'^\d{10}$';

  //// Bank Account Number:
  static String bankAccountNumberIraq = r'^\d{10,16}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberIraq = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdIraq = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitIraq = r'^\d{8}$';

  // **Afghanistan**
  //// National Identification Number:
  static String nationalIdAfghanistan = r'^\d{10}$';

  //// Passport Number:
  static String passportNumberAfghanistan = r'^[A-Z]{2}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberAfghanistan = r'^\d{11}$';

  //// Tax Identification Number (TIN):
  static String tinAfghanistan = r'^\d{10}$';

  //// Social Security Number:
  static String ssnAfghanistan = r'^\d{10}$';

  //// Health Insurance Number:
  static String healthInsuranceAfghanistan = r'^\d{10}$';

  //// Bank Account Number:
  static String bankAccountNumberAfghanistan = r'^\d{10,16}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberAfghanistan = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdAfghanistan = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitAfghanistan = r'^\d{8}$';

  // **Poland**
  //// National Identification Number (PESEL):
  static String peselPoland = r'^\d{11}$';

  //// Passport Number:
  static String passportNumberPoland = r'^[A-Z]{2}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberPoland = r'^[A-Z]\d{7}$';

  //// Tax Identification Number (NIP):
  static String nipPoland = r'^\d{10}$';

  //// Social Security Number:
  static String ssnPoland = r'^\d{11}$';

  //// Health Insurance Number:
  static String healthInsurancePoland = r'^\d{10}$';

  //// Bank Account Number:
  static String bankAccountNumberPoland = r'^\d{26}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberPoland = r'^[A-Z]{3}\d{4,5}$';

  //// Student ID Number:
  static String studentIdPoland = r'^\d{6}$';

  //// Work Permit Number:
  static String workPermitPoland = r'^\d{8}$';

  // **Canada**
  //// Social Insurance Number (SIN):
  static String sinCanada = r'^\d{9}$';

  //// Passport Number:
  static String passportNumberCanada = r'^[A-Z]{2}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberCanada = r'^[A-Z]\d{4}-\d{4}-\d{4}$';

  //// Tax Identification Number (TIN):
  static String tinCanada = r'^\d{9}$';

  //// Health Insurance Number:
  static String healthInsuranceCanada = r'^\d{10}$';

  //// Bank Account Number:
  static String bankAccountNumberCanada = r'^\d{7,12}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberCanada = r'^[A-Z0-9]{2}\d{2}-\d{3}-\d{3}$';

  //// Student ID Number:
  static String studentIdCanada = r'^\d{9}$';

  //// Work Permit Number:
  static String workPermitCanada = r'^\d{9}$';

  // **Morocco**
  //// National Identification Number (CIN):
  static String cinMorocco = r'^\d{12}$';

  //// Passport Number:
  static String passportNumberMorocco = r'^[A-Z]{2}\d{6}$';

  //// Driver's License Number:
  static String drivingLicenseNumberMorocco = r'^\d{10}$';

  //// Tax Identification Number (NIF):
  static String nifMorocco = r'^\d{10}$';

  //// Social Security Number:
  static String ssnMorocco = r'^\d{10}$';

  //// Health Insurance Number:
  static String healthInsuranceMorocco = r'^\d{10}$';

  //// Bank Account Number:
  static String bankAccountNumberMorocco = r'^\d{16}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberMorocco = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdMorocco = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitMorocco = r'^\d{8}$';

  // **Saudi Arabia**
  //// National Identification Number (ID Number):
  static String idNumberSaudiArabia = r'^\d{10}$';

  //// Passport Number:
  static String passportNumberSaudiArabia = r'^[A-Z]{2}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberSaudiArabia = r'^\d{10}$';

  //// Tax Identification Number (TIN):
  static String tinSaudiArabia = r'^\d{10}$';

  //// Social Security Number:
  static String ssnSaudiArabia = r'^\d{10}$';

  //// Health Insurance Number:
  static String healthInsuranceSaudiArabia = r'^\d{10}$';

  //// Bank Account Number:
  static String bankAccountNumberSaudiArabia = r'^\d{2}-\d{18}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberSaudiArabia = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdSaudiArabia = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitSaudiArabia = r'^\d{8}$';

  // **Uzbekistan**
  //// National Identification Number (INN):
  static String innUzbekistan = r'^\d{9}$';

  //// Passport Number:
  static String passportNumberUzbekistan = r'^[A-Z]{2}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberUzbekistan = r'^\d{9}$';

  //// Tax Identification Number (TIN):
  static String tinUzbekistan = r'^\d{9}$';

  //// Social Security Number:
  static String ssnUzbekistan = r'^\d{9}$';

  //// Health Insurance Number:
  static String healthInsuranceUzbekistan = r'^\d{9}$';

  //// Bank Account Number:
  static String bankAccountNumberUzbekistan = r'^\d{20}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberUzbekistan = r'^\d{3}-\d{3}-\d{3}$';

  //// Student ID Number:
  static String studentIdUzbekistan = r'^\d{6,8}$';

  //// Work Permit Number:
  static String workPermitUzbekistan = r'^\d{8}$';

  // **Peru**
  //// National Identification Number (DNI):
  static String dniPeru = r'^\d{8}$';

  //// Passport Number:
  static String passportNumberPeru = r'^[A-Z]{2}\d{6}$';

  //// Driver's License Number:
  static String drivingLicenseNumberPeru = r'^\d{8}$';

  //// Tax Identification Number (RUC):
  static String rucPeru = r'^\d{11}$';

  //// Social Security Number:
  static String ssnPeru = r'^\d{8}$';

  //// Health Insurance Number:
  static String healthInsurancePeru = r'^\d{8}$';

  //// Bank Account Number:
  static String bankAccountNumberPeru = r'^\d{14}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberPeru = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdPeru = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitPeru = r'^\d{8}$';

  // **Malaysia**
  //// National Identification Number (MyKad):
  static String mykadMalaysia = r'^\d{12}$';

  //// Passport Number:
  static String passportNumberMalaysia = r'^[A-Z]{1,2}\d{6}[A-Z]{1}$';

  //// Driver's License Number:
  static String drivingLicenseNumberMalaysia = r'^[A-Z]\d{11}$';

  //// Tax Identification Number (TIN):
  static String tinMalaysia = r'^\d{10}$';

  //// Social Security Number:
  static String ssnMalaysia = r'^\d{12}$';

  //// Health Insurance Number:
  static String healthInsuranceMalaysia = r'^\d{12}$';

  //// Bank Account Number:
  static String bankAccountNumberMalaysia = r'^\d{12}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberMalaysia = r'^[A-Z]{3}\d{3,6}$';

  //// Student ID Number:
  static String studentIdMalaysia = r'^\d{7}$';

  //// Work Permit Number:
  static String workPermitMalaysia = r'^\d{9}$';

  // **Angola**
  //// National Identification Number:
  static String nationalIdAngola = r'^\d{11}$';

  //// Passport Number:
  static String passportNumberAngola = r'^[A-Z]{2}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberAngola = r'^\d{9}$';

  //// Tax Identification Number (NIF):
  static String nifAngola = r'^\d{9}$';

  //// Social Security Number:
  static String ssnAngola = r'^\d{9}$';

  //// Health Insurance Number:
  static String healthInsuranceAngola = r'^\d{9}$';

  //// Bank Account Number:
  static String bankAccountNumberAngola = r'^\d{17}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberAngola = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdAngola = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitAngola = r'^\d{8}$';

  // **Mozambique**
  //// National Identification Number (BI):
  static String biMozambique = r'^\d{8}$';

  //// Passport Number:
  static String passportNumberMozambique = r'^[A-Z]{2}\d{6}$';

  //// Driver's License Number:
  static String drivingLicenseNumberMozambique = r'^\d{10}$';

  //// Tax Identification Number (NUIT):
  static String nuitMozambique = r'^\d{9}$';

  //// Social Security Number:
  static String ssnMozambique = r'^\d{9}$';

  //// Health Insurance Number:
  static String healthInsuranceMozambique = r'^\d{9}$';

  //// Bank Account Number:
  static String bankAccountNumberMozambique = r'^\d{17}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberMozambique = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdMozambique = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitMozambique = r'^\d{8}$';

  // **Ghana**
  //// National Identification Number:
  static String nationalIdGhana = r'^\d{9}$';

  //// Passport Number:
  static String passportNumberGhana = r'^[A-Z]{2}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberGhana = r'^\d{9}$';

  //// Tax Identification Number (TIN):
  static String tinGhana = r'^\d{10}$';

  //// Social Security Number:
  static String ssnGhana = r'^\d{10}$';

  //// Health Insurance Number:

  static String healthInsuranceGhana = r'^\d{10}$';

  //// Bank Account Number:
  static String bankAccountNumberGhana = r'^\d{10,12}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberGhana = r'^\d{2}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdGhana = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitGhana = r'^\d{8}$';

  // **Yemen**
  //// National Identification Number:
  static String nationalIdYemen = r'^\d{10}$';

  //// Passport Number:
  static String passportNumberYemen = r'^\d{9}$';

  //// Driver's License Number:
  static String drivingLicenseNumberYemen = r'^\d{12}$';

  //// Tax Identification Number (TIN):
  static String tinYemen = r'^\d{9}$';

  //// Social Security Number:
  static String ssnYemen = r'^\d{10}$';

  //// Health Insurance Number:
  static String healthInsuranceYemen = r'^\d{9}$';

  //// Bank Account Number:
  static String bankAccountNumberYemen = r'^\d{16}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberYemen = r'^\d{3}-\d{3}-\d{4}$';

  //// Student ID Number:
  static String studentIdYemen = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitYemen = r'^\d{8}$';

  // **Nepal**
  //// Citizenship Number:
  static String citizenshipNumberNepal = r'^\d{9}$';

  //// Passport Number:
  static String passportNumberNepal = r'^[A-Z]{1}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberNepal = r'^\d{9}$';

  //// Tax Identification Number (PAN):
  static String panNepal = r'^\d{9}[A-Z]{1}$';

  //// Social Security Number:
  static String ssnNepal = r'^\d{9}$';

  //// Health Insurance Number:
  static String healthInsuranceNepal = r'^\d{9}$';

  //// Bank Account Number:
  static String bankAccountNumberNepal = r'^\d{16}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberNepal = r'^[A-Z]{2}\d{1,4}$';

  //// Student ID Number:
  static String studentIdNepal = r'^\d{6}$';

  //// Work Permit Number:
  static String workPermitNepal = r'^\d{8}$';

  // **Venezuela**
  //// National Identification Number (Cédula de Identidad):
  static String cedulaVenezuela = r'^[VJPEG]\d{8}$';

  //// Passport Number:
  static String passportNumberVenezuela = r'^[A-Z]{1}\d{7}$';

  //// Driver's License Number:
  static String drivingLicenseNumberVenezuela = r'^\d{8}$';

  //// Tax Identification Number (RIF):
  static String rifVenezuela = r'^[VJPEG]\d{8}$';

  //// Social Security Number:
  static String ssnVenezuela = r'^\d{10}$';

  //// Health Insurance Number:
  static String healthInsuranceVenezuela = r'^\d{10}$';

  //// Bank Account Number:
  static String bankAccountNumberVenezuela = r'^\d{20}$';

  //// Vehicle Registration Number:
  static String vehicleRegNumberVenezuela = r'^\d{6}$';

  //// Student ID Number:
  static String studentIdVenezuela = r'^\d{8}$';

  //// Work Permit Number:
  static String workPermitVenezuela = r'^\d{8}$';

  // **Australia**
  ///Tax File Number (TFN):
  static String tfnAustralia = r'^\d{9}$';

  ///Passport Number:
  static String passportNumberAustralia = r'^[A-Z]{1,2}\d{7}$';

  ///Driver's License Number:
  static String drivingLicenseNumberAustralia = r'^[A-Z]\d{4}-\d{3}-\d{3}$';

  ///Medicare Number:
  static String medicareNumberAustralia = r'^\d{10}$';

  ///Social Security Number:
  static String ssnAustralia = r'^\d{9}$';

  ///Health Insurance Number:
  static String healthInsuranceAustralia = r'^\d{10}$';

  ///Bank Account Number:
  static String bankAccountNumberAustralia = r'^\d{6}-\d{10}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberAustralia = r'^[A-Z0-9]{2,6}-\d{2}-\d{2}$';

  ///Student ID Number:
  static String studentIdAustralia = r'^\d{7}$';

  ///Work Permit Number:
  static String workPermitAustralia = r'^\d{9}$';

  // **Netherlands**
  ///Citizen Service Number (BSN):
  static String bsnNetherlands = r'^\d{9}$';

  ///Passport Number:
  static String passportNumberNetherlands = r'^[A-Z]{2}\d{6}$';

  ///Driver's License Number:
  static String drivingLicenseNumberNetherlands = r'^\d{10}$';

  ///Tax Identification Number (TIN):
  static String tinNetherlands = r'^\d{9}$';

  ///Social Security Number:
  static String ssnNetherlands = r'^\d{9}$';

  ///Health Insurance Number:
  static String healthInsuranceNetherlands = r'^\d{9}$';

  ///Bank Account Number:
  static String bankAccountNumberNetherlands = r'^\d{4}-\d{7}-\d{2}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberNetherlands = r'^\d{2}-\d{2}-\d{2}$';

  ///Student ID Number:
  static String studentIdNetherlands = r'^\d{7}$';

  ///Work Permit Number:
  static String workPermitNetherlands = r'^\d{9}$';

  // **Belgium**
  ///National Identification Number (Rijksregisternummer):
  static String rijksregisternummerBelgium = r'^\d{11}$';

  ///Passport Number:
  static String passportNumberBelgium = r'^[A-Z]{2}\d{6}$';

  ///Driver's License Number:
  static String drivingLicenseNumberBelgium = r'^\d{12}$';

  ///Tax Identification Number (TIN):
  static String tinBelgium = r'^\d{10}$';

  ///Social Security Number:
  static String ssnBelgium = r'^\d{11}$';

  ///Health Insurance Number:
  static String healthInsuranceBelgium = r'^\d{11}$';

  ///Bank Account Number:
  static String bankAccountNumberBelgium = r'^\d{3}-\d{7}-\d{2}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberBelgium = r'^\d{3}-\d{3}-\d{3}$';

  ///Student ID Number:
  static String studentIdBelgium = r'^\d{7}$';

  ///Work Permit Number:
  static String workPermitBelgium = r'^\d{9}$';

  // **Sweden**
  ///Personal Identity Number (Personnummer):
  static String personnummerSweden = r'^\d{12}$';

  ///Passport Number:
  static String passportNumberSweden = r'^\d{9}$';

  ///Driver's License Number:
  static String drivingLicenseNumberSweden = r'^\d{12}$';

  ///Tax Identification Number (TIN):
  static String tinSweden = r'^\d{12}$';

  ///Social Security Number:
  static String ssnSweden = r'^\d{12}$';

  ///Health Insurance Number:
  static String healthInsuranceSweden = r'^\d{10}$';

  ///Bank Account Number:
  static String bankAccountNumberSweden = r'^\d{2}-\d{3}-\d{7}-\d{2}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberSweden = r'^[A-Z]{3}\d{2}$';

  ///Student ID Number:
  static String studentIdSweden = r'^\d{8}$';

  ///Work Permit Number:
  static String workPermitSweden = r'^\d{8}$';

// **Switzerland**
// - Social Security Number (AHV-Nummer):
  static String ahvNumberSwitzerland = r'^756\.\d{4}\.\d{4}\.\d{2}$';

  ///Passport Number:
  static String passportNumberSwitzerland = r'^[A-Z]{2}\d{7}$';

  ///Driver's License Number:
  static String drivingLicenseNumberSwitzerland = r'^[A-Z]{2}\d{6}$';

  ///Tax Identification Number (TIN):
  static String tinSwitzerland = r'^\d{6}\.\d{3}\.\d{3}\.\d{2}$';

  ///Health Insurance Number:
  static String healthInsuranceSwitzerland = r'^\d{3}\.\d{4}\.\d{4}\.\d{2}$';

  ///Bank Account Number:
  static String bankAccountNumberSwitzerland = r'^\d{5}-\d{1,2}-\d$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberSwitzerland = r'^[A-Z]{2}\d{4}\.\d{2}$';

  ///Student ID Number:
  static String studentIdSwitzerland = r'^\d{6}$';

  ///Work Permit Number:
  static String workPermitSwitzerland = r'^\d{9}$';

// **Portugal**
// - Citizen Card Number (Número de Identificação Civil):
  static String citizenCardNumberPortugal = r'^\d{8}$';

  ///Passport Number:
  static String passportNumberPortugal = r'^[A-Z]{2}\d{6}$';

  ///Driver's License Number:
  static String drivingLicenseNumberPortugal = r'^\d{12}$';

  ///Tax Identification Number (NIF):
  static String nifPortugal = r'^\d{9}$';

  ///Social Security Number:
  static String ssnPortugal = r'^\d{11}$';

  ///Health Insurance Number:
  static String healthInsurancePortugal = r'^\d{9}$';

  ///Bank Account Number:
  static String bankAccountNumberPortugal = r'^\d{21}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberPortugal = r'^\d{2}-\d{2}-\d{2}$';

  ///Student ID Number:
  static String studentIdPortugal = r'^\d{7}$';

  ///Work Permit Number:
  static String workPermitPortugal = r'^\d{9}$';

// **Austria**
// - Social Security Number (Sozialversicherungsnummer):
  static String socialSecurityNumberAustria = r'^\d{10}$';

  ///Passport Number:
  static String passportNumberAustria = r'^[A-Z]{2}\d{7}$';

  ///Driver's License Number:
  static String drivingLicenseNumberAustria = r'^\d{12}$';

  ///Tax Identification Number (TIN):
  static String tinAustria = r'^\d{8}$';

  ///Health Insurance Number:
  static String healthInsuranceAustria = r'^\d{11}$';

  ///Bank Account Number:
  static String bankAccountNumberAustria = r'^\d{16}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberAustria = r'^[A-Z]{2}\d{3}-\d{2}$';

  ///Student ID Number:
  static String studentIdAustria = r'^\d{8}$';

  ///Work Permit Number:
  static String workPermitAustria = r'^\d{9}$';

  // **Israel**
// - Identity Card Number (Mispar Zehut):
  static String identityCardNumberIsrael = r'^\d{9}$';

  ///Passport Number:
  static String passportNumberIsrael = r'^[A-Z]{1}\d{7}$';

  ///Driver's License Number:
  static String drivingLicenseNumberIsrael = r'^\d{8}$';

  ///Tax Identification Number (TIN):
  static String tinIsrael = r'^\d{9}$';

  ///Social Security Number:
  static String ssnIsrael = r'^\d{9}$';

  ///Health Insurance Number:
  static String healthInsuranceIsrael = r'^\d{9}$';

  ///Bank Account Number:
  static String bankAccountNumberIsrael = r'^\d{7}-\d{1}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberIsrael = r'^\d{3}-\d{3}-\d{4}$';

  ///Student ID Number:
  static String studentIdIsrael = r'^\d{7}$';

  ///Work Permit Number:
  static String workPermitIsrael = r'^\d{8}$';

//  **Norway**
  /// National Identity Number (Fødselsnummer):
  static String nationalIdentityNumberNorway = r'^\d{11}$';

  ///Passport Number:
  static String passportNumberNorway = r'^[A-Z]{2}\d{7}$';

  ///Driver's License Number:
  static String drivingLicenseNumberNorway = r'^\d{13}$';

  ///Tax Identification Number (TIN):
  static String tinNorway = r'^\d{9}$';

  ///Social Security Number:
  static String ssnNorway = r'^\d{11}$';

  ///Health Insurance Number:
  static String healthInsuranceNorway = r'^\d{11}$';

  ///Bank Account Number:
  static String bankAccountNumberNorway = r'^\d{11}$';

  /// Vehicle Registration Number:
  static String vehicleRegNumberNorway = r'^[A-Z]{2}\d{5}$';

  ///Student ID Number:
  static String studentIdNorway = r'^\d{6}$';

  ///Work Permit Number:
  static String workPermitNorway = r'^\d{9}$';

  /// **Ireland**
  /// Personal Public Service Number (PPS Number):
  static String ppsNumberIreland = r'^\d{7}[A-Z]{1,2}\d{1}$';

  ///Passport Number:
  static String passportNumberIreland = r'^\d{7}[A-Z]{1,2}$';

  ///Driver's License Number:
  static String drivingLicenseNumberIreland = r'^\d{8}$';

  ///Tax Identification Number (TIN):
  static String tinIreland = r'^\d{8}[A-Z]{1}$';

  ///Social Security Number:
  static String ssnIreland = r'^\d{7}[A-Z]{1,2}$';

  ///Health Insurance Number:
  static String healthInsuranceIreland = r'^\d{8}[A-Z]{1,2}$';

  ///Bank Account Number:
  static String bankAccountNumberIreland = r'^\d{8}$';

  ///Vehicle Registration Number:
  static String vehicleRegNumberIreland = r'^[0-9]{2}[D]{1}[0-9]{6}$';

  ///Student ID Number:
  static String studentIdIreland = r'^\d{8}$';

  ///Work Permit Number:
  static String workPermitIreland = r'^\d{8}$';

  // **Denmark**
  /// Personal Identification Number (CPR number):

  static String cprNumberDenmark = r'^\d{6}-\d{4}$';

  /// Passport Number:

  static String passportNumberDenmark = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:

  static String drivingLicenseNumberDenmark = r'^\d{10}$';

  /// Tax Identification Number (CVR number):

  static String cvrNumberDenmark = r'^\d{8}$';

  /// Social Security Number:

  static String ssnDenmark = r'^\d{10}$';

  /// Health Insurance Number:

  static String healthInsuranceDenmark = r'^\d{8}$';

  /// Bank Account Number:

  static String bankAccountNumberDenmark = r'^\d{14}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberDenmark = r'^[A-Z]{2}\d{5}$';

  /// Student ID Number:

  static String studentIdDenmark = r'^\d{6}$';

  /// Work Permit Number:

  static String workPermitDenmark = r'^\d{8}$';

  // **Singapore**
  /// National Registration Identity Card (NRIC) Number:

  static String nricNumberSingapore = r'^[STFG]\d{7}[A-Z]$';

  /// Passport Number:

  static String passportNumberSingapore = r'^[A-Z]{1,2}\d{7}$';

  /// Driver's License Number:

  static String drivingLicenseNumberSingapore = r'^[A-Z]\d{7}[A-Z]$';

  /// Tax Identification Number (TIN):

  static String tinSingapore = r'^\d{7}[A-Z]$';

  /// Social Security Number:

  static String ssnSingapore = r'^\d{7}[A-Z]$';

  /// Health Insurance Number:

  static String healthInsuranceSingapore = r'^\d{7}[A-Z]$';

  /// Bank Account Number:

  static String bankAccountNumberSingapore = r'^\d{10,12}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberSingapore = r'^[A-Z]{2}\d{3}[A-Z]{1}$';

  /// Student ID Number:

  static String studentIdSingapore = r'^\d{7}$';

  /// Work Permit Number:

  static String workPermitSingapore = r'^\d{7}[A-Z]$';

  // **Finland**
  /// Personal Identity Code (Henkilötunnus):

  static String personalIdentityCodeFinland = r'^\d{6}[-+A]\d{3}[A-Z0-9]$';

  /// Passport Number:

  static String passportNumberFinland = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:

  static String drivingLicenseNumberFinland = r'^\d{12}$';

  /// Tax Identification Number (TIN):

  static String tinFinland = r'^\d{7}-\d{2}$';

  /// Social Security Number:

  static String ssnFinland = r'^\d{11}$';

  /// Health Insurance Number:

  static String healthInsuranceFinland = r'^\d{8}-\d{1}$';

  /// Bank Account Number:

  static String bankAccountNumberFinland = r'^\d{14}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberFinland = r'^[A-Z]{3}-\d{3}-\d{2}$';

  /// Student ID Number:

  static String studentIdFinland = r'^\d{7}$';

  /// Work Permit Number:

  static String workPermitFinland = r'^\d{8}$';

  // **Dominican Republic**
  /// Cedula (National ID Number):

  static String cedulaDominicanRepublic = r'^\d{10}$';

  /// Passport Number:

  static String passportNumberDominicanRepublic = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:

  static String drivingLicenseNumberDominicanRepublic = r'^\d{7}$';

  /// Tax Identification Number (RNC):

  static String rncDominicanRepublic = r'^\d{9}$';

  /// Social Security Number:

  static String ssnDominicanRepublic = r'^\d{9}$';

  /// Health Insurance Number:

  static String healthInsuranceDominicanRepublic = r'^\d{8}$';

  /// Bank Account Number:

  static String bankAccountNumberDominicanRepublic = r'^\d{4}-\d{6}-\d{2}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberDominicanRepublic = r'^\d{3}-\d{3}-\d{4}$';

  /// Student ID Number:

  static String studentIdDominicanRepublic = r'^\d{9}$';

  /// Work Permit Number:

  static String workPermitDominicanRepublic = r'^\d{8}$';

  // **Czech Republic**
  /// Birth Number (Rodné číslo):

  static String birthNumberCzechRepublic = r'^\d{6}/\d{4}$';

  /// Passport Number:

  static String passportNumberCzechRepublic = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:

  static String drivingLicenseNumberCzechRepublic = r'^\d{11}$';

  /// Tax Identification Number (TIN):

  static String tinCzechRepublic = r'^\d{8,10}$';

  /// Social Security Number:

  static String ssnCzechRepublic = r'^\d{10}$';

  /// Health Insurance Number:

  static String healthInsuranceCzechRepublic = r'^\d{9}$';

  /// Bank Account Number:

  static String bankAccountNumberCzechRepublic = r'^\d{4}-\d{2,6}/\d{0800}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberCzechRepublic = r'^[A-Z0-9]{2}-\d{2}-\d{4}$';

  /// Student ID Number:

  static String studentIdCzechRepublic = r'^\d{8}$';

  /// Work Permit Number:

  static String workPermitCzechRepublic = r'^\d{8}$';

  // **Greece**
  // Tax Identification Number (AFM):

  static String afmGreece = r'^\d{9}$';

  /// Passport Number:

  static String passportNumberGreece = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:

  static String drivingLicenseNumberGreece = r'^\d{5,15}$';

  /// Social Security Number:

  static String ssnGreece = r'^\d{9}$';

  /// Health Insurance Number:

  static String healthInsuranceGreece = r'^\d{11}$';

  /// Bank Account Number:

  static String bankAccountNumberGreece = r'^\d{7}-\d{2}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberGreece = r'^[A-Z]{3}-\d{4}$';

  /// Student ID Number:

  static String studentIdGreece = r'^\d{10}$';

  /// Work Permit Number:

  static String workPermitGreece = r'^\d{9}$';

  // **New Zealand**
  /// Inland Revenue Number (IRD Number):

  static String irdNumberNewZealand = r'^\d{8}$';

  /// Passport Number:

  static String passportNumberNewZealand = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:

  static String drivingLicenseNumberNewZealand = r'^\d{9}$';

  /// Tax Identification Number (TIN):

  static String tinNewZealand = r'^\d{8}$';

  /// Social Security Number:

  static String ssnNewZealand = r'^\d{9}$';

  /// Health Insurance Number:

  static String healthInsuranceNewZealand = r'^\d{8}$';

  /// Bank Account Number:

  static String bankAccountNumberNewZealand = r'^\d{2}-\d{4}-\d{7}-\d{3}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberNewZealand = r'^[A-Z]{3}\d{4}$';

  /// Student ID Number:

  static String studentIdNewZealand = r'^\d{7}$';

  /// Work Permit Number:

  static String workPermitNewZealand = r'^\d{8}$';

  // **Slovakia**
  /// Birth Number (Rodné číslo):

  static String birthNumberSlovakia = r'^\d{6}/\d{3,4}$';

  /// Passport Number:

  static String passportNumberSlovakia = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:

  static String drivingLicenseNumberSlovakia = r'^\d{9}$';

  /// Tax Identification Number (TIN):

  static String tinSlovakia = r'^\d{10}$';

  /// Social Security Number:

  static String ssnSlovakia = r'^\d{10}$';

  /// Health Insurance Number:

  static String healthInsuranceSlovakia = r'^\d{10}$';

  /// Bank Account Number:

  static String bankAccountNumberSlovakia = r'^\d{4}-\d{6}-\d{2}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberSlovakia = r'^[A-Z0-9]{5}-\d{3}$';

  /// Student ID Number:

  static String studentIdSlovakia = r'^\d{6}/\d{4}$';

  /// Work Permit Number:

  static String workPermitSlovakia = r'^\d{9}$';

// **Costa Rica**
  /// National Identification Number (Cédula de Identidad):

  static String cedulaCostaRica = r'^\d{9}$';

  /// Passport Number:

  static String passportNumberCostaRica = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:

  static String drivingLicenseNumberCostaRica = r'^\d{12}$';

  /// Tax Identification Number (TIN):

  static String tinCostaRica = r'^\d{9}$';

  /// Social Security Number:

  static String ssnCostaRica = r'^\d{9}$';

  /// Health Insurance Number:

  static String healthInsuranceCostaRica = r'^\d{10}$';

  /// Bank Account Number:

  static String bankAccountNumberCostaRica = r'^\d{4}-\d{4}-\d{1}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberCostaRica = r'^[A-Z]{3}-\d{3}$';

  /// Student ID Number:

  static String studentIdCostaRica = r'^\d{10}$';

  /// Work Permit Number:

  static String workPermitCostaRica = r'^\d{11}$';

// **Kuwait**
  /// Civil ID Number:

  static String civilIdKuwait = r'^\d{12}$';

  /// Passport Number:

  static String passportNumberKuwait = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:

  static String drivingLicenseNumberKuwait = r'^\d{9}$';

  /// Tax Identification Number (TIN):

  static String tinKuwait = r'^\d{8}$';

  /// Social Security Number:

  static String ssnKuwait = r'^\d{9}$';

  /// Health Insurance Number:

  static String healthInsuranceKuwait = r'^\d{10}$';

  /// Bank Account Number:

  static String bankAccountNumberKuwait = r'^\d{4}-\d{4}-\d{4}-\d{4}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberKuwait = r'^\d{2}-\d{3}-\d{4}$';

  /// Student ID Number:

  static String studentIdKuwait = r'^\d{9}$';

  /// Work Permit Number:

  static String workPermitKuwait = r'^\d{7}$';

// **Panama**
  /// Personal Identity Card (Cédula de Identidad Personal):

  static String cedulaPanama = r'^\d{1,2}-\d{4}-\d{4}$';

  /// Passport Number:

  static String passportNumberPanama = r'^[A-Z]{1}\d{7}$';

  /// Driver's License Number:

  static String drivingLicenseNumberPanama = r'^\d{7,8}$';

  /// Tax Identification Number (RUC):

  static String rucPanama = r'^\d{1,2}-\d{1,7}-\d{1,4}$';

  /// Social Security Number:

  static String ssnPanama = r'^\d{1,2}-\d{1,7}-\d{1,4}$';

  /// Health Insurance Number:

  static String healthInsurancePanama = r'^\d{4}-\d{6}-\d{1}$';

  /// Bank Account Number:

  static String bankAccountNumberPanama = r'^\d{4}-\d{2}-\d{10}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberPanama = r'^\d{1,2}-\d{3,4}-\d{1,5}$';

  /// Student ID Number:

  static String studentIdPanama = r'^\d{6,8}$';

  /// Work Permit Number:

  static String workPermitPanama = r'^\d{1,2}-\d{4}-\d{4}$';

// **Croatia**
  /// Personal Identification Number (OIB):

  static String oibCroatia = r'^\d{11}$';

  /// Passport Number:

  static String passportNumberCroatia = r'^[A-Z]{2}\d{7}$';

  /// Driver's License Number:

  static String drivingLicenseNumberCroatia = r'^\d{9}$';

  /// Tax Identification Number (PDV ID):

  static String pdvIdCroatia = r'^\d{11}$';

  /// Social Security Number:

  static String ssnCroatia = r'^\d{11}$';

  /// Health Insurance Number:

  static String healthInsuranceCroatia = r'^\d{11}$';

  /// Bank Account Number:

  static String bankAccountNumberCroatia = r'^\d{7}-\d{1,2}-\d{10}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberCroatia = r'^\d{2}-\d{3}-\d{3}$';

  /// Student ID Number:

  static String studentIdCroatia = r'^\d{10}$';

  /// Work Permit Number:

  static String workPermitCroatia = r'^\d{10}$';

  // **Lebanon**
  /// National Identification Number (الرقم الوطني):

  static String nationalIdLebanon = r'^\d{8}$';

  /// Passport Number:

  static String passportNumberLebanon = r'^[A-Z]{2}\d{6}$';

  /// Driver's License Number:

  static String drivingLicenseNumberLebanon = r'^\d{9}$';

  /// Tax Identification Number (TIN):

  static String tinLebanon = r'^\d{9}$';

  /// Social Security Number:

  static String ssnLebanon = r'^\d{9}$';

  /// Health Insurance Number:

  static String healthInsuranceLebanon = r'^\d{10}$';

  /// Bank Account Number:

  static String bankAccountNumberLebanon = r'^\d{4}-\d{7}-\d{2}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberLebanon = r'^\d{4}-\d{3}-\d{4}$';

  /// Student ID Number:

  static String studentIdLebanon = r'^\d{8}$';

  /// Work Permit Number:

  static String workPermitLebanon = r'^\d{9}$';

// **Uruguay**
  /// Identity Card Number (Cédula de Identidad):

  static String cedulaUruguay = r'^\d{7,8}$';

  /// Passport Number:

  static String passportNumberUruguay = r'^\d{3,4}-\d{4,6}-\d{1}$';

  /// Driver's License Number:

  static String drivingLicenseNumberUruguay = r'^\d{6,8}$';

  /// Tax Identification Number (RUT):

  static String rutUruguay = r'^\d{7,8}$';

  /// Social Security Number:

  static String ssnUruguay = r'^\d{7,8}$';

  /// Health Insurance Number:

  static String healthInsuranceUruguay = r'^\d{6,7}-\d{1}$';

  /// Bank Account Number:

  static String bankAccountNumberUruguay = r'^\d{4}-\d{5}-\d{1}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberUruguay = r'^[A-Z]{3}\d{3,4}$';

  /// Student ID Number:

  static String studentIdUruguay = r'^\d{6,8}$';

  /// Work Permit Number:

  static String workPermitUruguay = r'^\d{7,8}$';

// **Lithuania**
  /// Personal Code
  ///
// (Asmens kodas):

  static String personalCodeLithuania = r'^\d{11}$';

  /// Passport Number:

  static String passportNumberLithuania = r'^[A-Z0-9]{8}$';

  /// Driver's License Number:

  static String drivingLicenseNumberLithuania = r'^\d{10}$';

  /// Tax Identification Number (PVM mokėtojo kodas):

  static String pvmKodasLithuania = r'^\d{9}$';

  /// Social Security Number:

  static String ssnLithuania = r'^\d{11}$';

  /// Health Insurance Number:

  static String healthInsuranceLithuania = r'^\d{10}$';

  /// Bank Account Number:

  static String bankAccountNumberLithuania = r'^\d{5}-\d{5}-\d{11}$';

  /// Vehicle Registration Number:

  static String vehicleRegNumberLithuania = r'^[A-Z]{3}\d{3}$';

  /// Student ID Number:

  static String studentIdLithuania = r'^\d{6}$';

  /// Work Permit Number:

  static String workPermitLithuania = r'^\d{7}$';

  // **Oman**
  // National ID Number:

  static String nationalIdOman = r'^\d{7}-\d{1}$';

  // Passport Number:

  static String passportNumberOman = r'^[A-Z]{1}\d{7}$';

  // Driver's License Number:

  static String drivingLicenseNumberOman = r'^\d{7}$';

  // Tax Identification Number (TIN):

  static String tinOman = r'^\d{8}$';

  // Social Security Number:

  static String ssnOman = r'^\d{7}-\d{1}$';

  // Health Insurance Number:

  static String healthInsuranceOman = r'^\d{9}$';

  // Bank Account Number:

  static String bankAccountNumberOman = r'^\d{3}-\d{6}-\d{5}$';

  // Vehicle Registration Number:

  static String vehicleRegNumberOman = r'^\d{2}-\d{4}-\d{3}-\d{3}$';

  // Student ID Number:

  static String studentIdOman = r'^\d{7}$';

  // Work Permit Number:

  static String workPermitOman = r'^\d{6}-\d{1}$';

  // **Bosnia and Herzegovina**
  // Unique Master Citizen Number (JMBG):

  static String jmbgBosniaHerzegovina = r'^\d{13}$';

  // Passport Number:

  static String passportNumberBosniaHerzegovina = r'^[A-Z]{2}\d{7}$';

  // Driver's License Number:

  static String drivingLicenseNumberBosniaHerzegovina = r'^\d{9}$';

  // Tax Identification Number (PIB):

  static String pibBosniaHerzegovina = r'^\d{8,9}$';

  // Social Security Number:

  static String ssnBosniaHerzegovina = r'^\d{13}$';

  // Health Insurance Number:

  static String healthInsuranceBosniaHerzegovina = r'^\d{8}$';

  // Bank Account Number:

  static String bankAccountNumberBosniaHerzegovina = r'^\d{3}-\d{6}-\d{5}$';

  // Vehicle Registration Number:

  static String vehicleRegNumberBosniaHerzegovina =
      r'^\d{2}-\d{4}-\d{3}-\d{3}$';

  // Student ID Number:

  static String studentIdBosniaHerzegovina = r'^\d{7}$';

  // Work Permit Number:

  static String workPermitBosniaHerzegovina = r'^\d{6}-\d{1}$';

  // **Mongolia**
  // National Registration Identity Card Number:

  static String nricNumberMongolia = r'^\d{10}$';

  // Passport Number:

  static String passportNumberMongolia = r'^[A-Z]{2}\d{7}$';

  // Driver's License Number:

  static String drivingLicenseNumberMongolia = r'^\d{9}$';

  // Tax Identification Number (TIN):

  static String tinMongolia = r'^\d{9}$';

  // Social Security Number:

  static String ssnMongolia = r'^\d{10}$';

  // Health Insurance Number:

  static String healthInsuranceMongolia = r'^\d{9}$';

  // Bank Account Number:

  static String bankAccountNumberMongolia = r'^\d{8}-\d{2}-\d{3}$';

  // Vehicle Registration Number:

  static String vehicleRegNumberMongolia = r'^[A-Z]{2}\d{4}$';

  // Student ID Number:

  static String studentIdMongolia = r'^\d{6}$';

  // Work Permit Number:

  static String workPermitMongolia = r'^\d{6}$';

  // **Jamaica**
  // Taxpayer Registration Number (TRN):

  static String trnJamaica = r'^\d{9}$';

  // Passport Number:

  static String passportNumberJamaica = r'^[A-Z]{1}\d{7}$';

  // Driver's License Number:

  static String drivingLicenseNumberJamaica = r'^\d{7,10}$';

  // National Insurance Number:
  static String nationalInsuranceNumberJamaica = r'^\d{9}$';

  // Social Security Number:
  static String ssnJamaica = r'^\d{9}$';

  // Health Insurance Number:
  static String healthInsuranceJamaica = r'^\d{6}$';

  // Bank Account Number:
  static String bankAccountNumberJamaica = r'^\d{3}-\d{7}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberJamaica = r'^\d{2}-\d{4}-\d{3}-\d{3}$';

  // Student ID Number:
  static String studentIdJamaica = r'^\d{6}$';

  // Work Permit Number:
  static String workPermitJamaica = r'^\d{7}$';

  // **Latvia**
  // Personal Code (Personas kods):
  static String personalCodeLatvia = r'^\d{11}$';

  // Passport Number:
  static String passportNumberLatvia = r'^[A-Z0-9]{8}$';

  // Driver's License Number:
  static String drivingLicenseNumberLatvia = r'^\d{10}$';

  // Tax Identification Number (PVN ID):
  static String pvnIdLatvia = r'^LV\d{11}$';

  // Social Security Number:
  static String ssnLatvia = r'^\d{11}$';

  // Health Insurance Number:
  static String healthInsuranceLatvia = r'^\d{8}$';

  // Bank Account Number:
  static String bankAccountNumberLatvia = r'^\d{2}-\d{4}-\d{4}-\d{4}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberLatvia = r'^[A-Z]{2}\d{4}$';

  // Student ID Number:
  static String studentIdLatvia = r'^\d{6}$';

  // Work Permit Number:
  static String workPermitLatvia = r'^\d{10}$';

  // **Namibia**
  // Identity Document Number:
  static String idNumberNamibia = r'^\d{2}-\d{6}-\d{1}$';

  // Passport Number:
  static String passportNumberNamibia = r'^\d{2}-\d{6}$';

  // Driver's License Number:
  static String drivingLicenseNumberNamibia = r'^\d{6}$';

  // Tax Identification Number (TIN):
  static String tinNamibia = r'^\d{9}$';

  // Social Security Number:
  static String ssnNamibia = r'^\d{6}-\d{1}$';

  // Health Insurance Number:
  static String healthInsuranceNamibia = r'^\d{9}$';

  // Bank Account Number:
  static String bankAccountNumberNamibia = r'^\d{4}-\d{6}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberNamibia = r'^[A-Z]{2}\d{5}$';

  // Student ID Number:
  static String studentIdNamibia = r'^\d{6}$';

  // Work Permit Number:
  static String workPermitNamibia = r'^\d{5}-\d{1}$';

  // **Botswana**
  // Omang (National Identity Card) Number:
  static String omangBotswana = r'^\d{2}-\d{6}-\d{2}$';

  // Passport Number:
  static String passportNumberBotswana = r'^[A-Z]{2}\d{6}$';

  // Driver's License Number:
  static String drivingLicenseNumberBotswana = r'^\d{6}$';

  // Tax Identification Number (TIN):
  static String tinBotswana = r'^\d{9}$';

  // Social Security Number:
  static String ssnBotswana = r'^\d{7}-\d{1}$';

  // Health Insurance Number:
  static String healthInsuranceBotswana = r'^\d{9}$';

  // Bank Account Number:
  static String bankAccountNumberBotswana = r'^\d{4}-\d{6}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberBotswana = r'^[A-Z]{2}\d{5}$';

  // Student ID Number:
  static String studentIdBotswana = r'^\d{6}$';

  // Work Permit Number:
  static String workPermitBotswana = r'^\d{5}-\d{1}$';

  // **Qatar**
  // Qatari ID Number (QID):
  static String qidQatar = r'^\d{8}-\d{1}$';

  // Passport Number:
  static String passportNumberQatar = r'^[A-Z]{1}\d{7}$';

  // Driver's License Number:
  static String drivingLicenseNumberQatar = r'^\d{9}$';

  // Tax Identification Number (TIN):
  static String tinQatar = r'^\d{9}$';

  // Social Security Number:
  static String ssnQatar = r'^\d{9}$';

  // Health Insurance Number:
  static String healthInsuranceQatar = r'^\d{9}$';

  // Bank Account Number:
  static String bankAccountNumberQatar = r'^\d{4}-\d{6}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberQatar = r'^[A-Z]{2}\d{5}$';

  // Student ID Number:
  static String studentIdQatar = r'^\d{6}$';

  // Work Permit Number:
  static String workPermitQatar = r'^\d{5}-\d{1}$';

  // **Slovenia**
  // Personal Identification Number (EMŠO):
  static String emsoSlovenia = r'^\d{13}$';

  // Passport Number:
  static String passportNumberSlovenia = r'^[A-Z]{2}\d{7}$';

  // Driver's License Number:
  static String drivingLicenseNumberSlovenia = r'^\d{9}$';

  // Tax Identification Number (TIN):
  static String tinSlovenia = r'^\d{8}$';

  // Social Security Number:
  static String ssnSlovenia = r'^\d{9}$';

  // Health Insurance Number:
  static String healthInsuranceSlovenia = r'^\d{9}$';

  // Bank Account Number:
  static String bankAccountNumberSlovenia = r'^\d{3}-\d{8}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberSlovenia = r'^[A-Z]{2}\d{4}$';

  // Student ID Number:
  static String studentIdSlovenia = r'^\d{8}$';

  // Work Permit Number:
  static String workPermitSlovenia = r'^\d{10}$';

  // **The Gambia**
  // National Identification Number:
  static String nationalIdGambia = r'^\d{11}$';

  // Passport Number:
  static String passportNumberGambia = r'^\d{2}-\d{6}-\d{1}$';

  // Driver's License Number:
  static String drivingLicenseNumberGambia = r'^\d{6}$';

  // Tax Identification Number (TIN):
  static String tinGambia = r'^\d{9}$';

  // Social Security Number:
  static String ssnGambia = r'^\d{7}-\d{1}$';

  // Health Insurance Number:
  static String healthInsuranceGambia = r'^\d{9}$';

  // Bank Account Number:
  static String bankAccountNumberGambia = r'^\d{4}-\d{5}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberGambia = r'^[A-Z]{3}\d{4}$';

  // Student ID Number:
  static String studentIdGambia = r'^\d{7}$';

  // Work Permit Number:
  static String workPermitGambia = r'^\d{5}-\d{1}$';

  // **Macedonia**
  // Personal Identification Number (Единствен матичен број - EMB):
  static String embMacedonia = r'^\d{13}$';

  // Passport Number:
  static String passportNumberMacedonia = r'^[A-Z]{2}\d{7}$';

  // Driver's License Number:
  static String drivingLicenseNumberMacedonia = r'^\d{9}$';

  // Tax Identification Number (TIN):
  static String tinMacedonia = r'^\d{13}$';

  // Social Security Number:
  static String ssnMacedonia = r'^\d{13}$';

  // Health Insurance Number:
  static String healthInsuranceMacedonia = r'^\d{8}$';

  // Bank Account Number:
  static String bankAccountNumberMacedonia = r'^\d{3}-\d{10}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberMacedonia = r'^[A-Z]{2}\d{4}-\d{1,2}$';

  // Student ID Number:
  static String studentIdMacedonia = r'^\d{6}$';

  // Work Permit Number:
  static String workPermitMacedonia = r'^\d{6}$';

  // **Guinea-Bissau**
  // National Identity Card Number:
  static String idNumberGuineaBissau = r'^\d{9}$';

  // Passport Number:
  static String passportNumberGuineaBissau = r'^\d{8}$';

  // Driver's License Number:
  static String drivingLicenseNumberGuineaBissau = r'^\d{6}$';

  // Tax Identification Number (TIN):
  static String tinGuineaBissau = r'^\d{9}$';

  // Social Security Number:
  static String ssnGuineaBissau = r'^\d{7}-\d{1}$';

  // Health Insurance Number:
  static String healthInsuranceGuineaBissau = r'^\d{9}$';

  // Bank Account Number:
  static String bankAccountNumberGuineaBissau = r'^\d{4}-\d{5}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberGuineaBissau = r'^[A-Z]{3}\d{4}$';

  // Student ID Number:
  static String studentIdGuineaBissau = r'^\d{7}$';

  // Work Permit Number:
  static String workPermitGuineaBissau = r'^\d{5}-\d{1}$';

  // **Gabon**
  // National Identification Number:
  static String nationalIdGabon = r'^\d{13}$';

  // Passport Number:
  static String passportNumberGabon = r'^\d{8}$';

  // Driver's License Number:
  static String drivingLicenseNumberGabon = r'^\d{6}$';

  // Tax Identification Number (TIN):
  static String tinGabon = r'^\d{9}$';

  // Social Security Number:
  static String ssnGabon = r'^\d{7}-\d{1}$';

  // Health Insurance Number:
  static String healthInsuranceGabon = r'^\d{9}$';

  // Bank Account Number:
  static String bankAccountNumberGabon = r'^\d{4}-\d{5}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberGabon = r'^[A-Z]{3}\d{4}$';

  // Student ID Number:
  static String studentIdGabon = r'^\d{7}$';

  // Work Permit Number:
  static String workPermitGabon = r'^\d{5}-\d{1}$';

  // **Bahrain**
  // National Identification Number:
  static String nationalIdBahrain = r'^\d{9}$';

  // Passport Number:
  static String passportNumberBahrain = r'^[A-Z]{1}\d{7}$';

  // Driver's License Number:
  static String drivingLicenseNumberBahrain = r'^\d{8}$';

  // Tax Identification Number (TIN):
  static String tinBahrain = r'^\d{9}$';

  // Social Security Number:
  static String ssnBahrain = r'^\d{9}$';

  // Health Insurance Number:
  static String healthInsuranceBahrain = r'^\d{9}$';

  // Bank Account Number:
  static String bankAccountNumberBahrain = r'^\d{4}-\d{5}-\d{2}$';

  // Vehicle Registration Number:
  static String vehicleRegNumberBahrain = r'^[A-Z]{3}\d{4}$';

  // Student ID Number:
  static String studentIdBahrain = r'^\d{7}$';

  // Work Permit Number:
  static String workPermitBahrain = r'^\d{5}-\d{1}$';

  // **Citizenship Identity Card Number (CID):**
  static String cidBhutan = r'^\d{8}$';

  // **Passport Number:**
  static String passportNumberBhutan = r'^[A-Z]{1}\d{7}$';

  // **Driver's License Number:**
  static String drivingLicenseNumberBhutan = r'^\d{8}$';

  // **Tax Identification Number (TIN):**
  static String tinBhutan = r'^\d{9}$';

  // **Social Security Number:**
  static String ssnBhutan = r'^\d{9}$';

  // **Health Insurance Number:**
  static String healthInsuranceBhutan = r'^\d{9}$';

  // **Bank Account Number:**
  static String bankAccountNumberBhutan = r'^\d{5}-\d{5}-\d{3}-\d{2}$';

  // **Vehicle Registration Number:**
  static String vehicleRegNumberBhutan = r'^\d{2}-\d{4}-\d{3}-\d{3}$';

  // **Student ID Number:**
  static String studentIdBhutan = r'^\d{6}$';

  // **Work Permit Number:**
  static String workPermitBhutan = r'^\d{8}$';

  // New York Stock Exchange (NYSE):
  static String nyseRegex = r'^(NYSE|NYSE ARCA)$';

  // NASDAQ:
  static String nasdaqRegex = r'^NASDAQ$';

  // Tokyo Stock Exchange (TSE):
  static String tseRegex = r'^TSE$';

  // Shanghai Stock Exchange (SSE):
  static String sseRegex = r'^SSE$';

  // Hong Kong Stock Exchange (HKEX):
  static String hkexRegex = r'^(HKEX|SEHK)$';

  // Euronext:
  static String euronextRegex = r'^ENX$';

  // London Stock Exchange (LSE):
  static String lseRegex = r'^LSE$';

  // Shenzhen Stock Exchange (SZSE):
  static String szseRegex = r'^SZSE$';

  // Toronto Stock Exchange (TSX):
  static String tsxRegex = r'^TSX$';

  // Bombay Stock Exchange (BSE):
  static String bseRegex = r'^BSE$';

  //Matching Palindromes:
  static String palindromes = r'^(.?)(.?)(.?)(.?)(.?).?\5\4\3\2\1$';

  //Matching Prime Numbers:
  static String primeNumbers = r'^1?$|^(11+?)\1+$';

  //Matching Balanced Parentheses:
  static String balancedParentheses = r'^(\()?\1*(?(1)(?R)|)$';

  //Matching Morse Code:
  static String morseCode = r'^([.-]+|\/)+$';

  //Matching Fibonacci Numbers:
  static String fibonacciNumbers = r'^((0?)|((1|10)(?=(\3+(?!\3))+$)))+$';

  //  **SSID Names**:
  static String ssidNames = r'^[ -~]{1,32}$';

  // **MAC Addresses**:
  static String macAddresses = r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$';

  // **WEP Keys**:
  static String wepKeys = r'^[0-9A-Fa-f]{10}(|-[0-9A-Fa-f]{26})$';

  // **WPA Keys**:
  static String wpaKeys = r'^[ -~]{8,63}$';

  // **Network Names**:
  static String networkNames = r'^[a-zA-Z0-9 ]+$';

  // **Signal Strength**:
  static String signalStrength = r'^-?\d{1,3} dBm$';

  // **wifi Channel Numbers**:
  static String wifiChannelNumbers = r'^(1[ -]14|36[ -]165)$';
}
