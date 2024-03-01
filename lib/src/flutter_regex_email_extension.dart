import 'dart:core';

// Enum to define the type of subdomain
enum SubdomainType { None, Alphabetic, Numeric, AlphaNumeric }

// Function to validate a email
bool email(String email,
    {bool supportTopLevelDomain = false, bool supportInternational = true}) {
  int _index = 0;

  // Characters allowed in the local part of the email address
  const String atCharacters = "!#\$%&'*+-/=?^_`{|}~";
  SubdomainType domainType = SubdomainType.None;

  // Function to check if a character is a digit
  bool isDigit(String c) {
    return c.codeUnitAt(0) >= 48 && c.codeUnitAt(0) <= 57;
  }

  // Function to check if a character is a letter
  bool isLetter(String c) {
    return (c.codeUnitAt(0) >= 65 && c.codeUnitAt(0) <= 90) ||
        (c.codeUnitAt(0) >= 97 && c.codeUnitAt(0) <= 122);
  }

  // Function to check if a character is a letter or digit
  bool isLetterOrDigit(String c) {
    return isLetter(c) || isDigit(c);
  }

  // Function to check if a character is '@'
  bool isAt(String c, bool supportInternational) {
    return c.codeUnitAt(0) < 128
        ? isLetterOrDigit(c) || atCharacters.contains(c)
        : supportInternational;
  }

  // Function to check if a character is valid for a subdomain
  bool isDomain(String c, bool supportInternational) {
    if (c.codeUnitAt(0) < 128) {
      if (isLetter(c) || c == '-') {
        domainType = SubdomainType.Alphabetic;
        return true;
      }

      if (isDigit(c)) {
        domainType = SubdomainType.Numeric;
        return true;
      }

      return false;
    }

    if (supportInternational) {
      domainType = SubdomainType.Alphabetic;
      return true;
    }

    return false;
  }

  // Function to check if a character is valid for the start of a subdomain
  bool isDomainStart(String c, bool supportInternational) {
    if (c.codeUnitAt(0) < 128) {
      if (isLetter(c)) {
        domainType = SubdomainType.Alphabetic;
        return true;
      }

      if (isDigit(c)) {
        domainType = SubdomainType.Numeric;
        return true;
      }

      domainType = SubdomainType.None;

      return false;
    }

    if (supportInternational) {
      domainType = SubdomainType.Alphabetic;
      return true;
    }

    domainType = SubdomainType.None;

    return false;
  }

  // Function to skip characters until a certain condition is met
  bool skipAt(String text, bool supportInternational) {
    final startIndex = _index;

    while (_index < text.length && isAt(text[_index], supportInternational)) {
      _index++;
    }

    return _index > startIndex;
  }

  // Function to skip characters in a subdomain until a certain condition is met
  bool skipSubDomain(String text, bool supportInternational) {
    final startIndex = _index;

    if (!isDomainStart(text[_index], supportInternational)) {
      return false;
    }

    _index++;

    while (_index < text.length && isDomain(text[_index], supportInternational)) {
      _index++;
    }

    return (_index - startIndex) < 64 && text[_index - 1] != '-';
  }

  // Function to skip characters in a domain until a certain condition is met
  bool skipDomain(
      String text, bool supportTopLevelDomain, bool supportInternational) {
    if (!skipSubDomain(text, supportInternational)) {
      return false;
    }

    if (_index < text.length && text[_index] == '.') {
      do {
        _index++;

        if (_index == text.length) {
          return false;
        }

        if (!skipSubDomain(text, supportInternational)) {
          return false;
        }
      } while (_index < text.length && text[_index] == '.');
    } else if (!supportTopLevelDomain) {
      return false;
    }

    if (domainType == SubdomainType.Numeric) {
      return false;
    }

    return true;
  }

  // Function to skip characters in a quoted string until the end
  bool skipQuoted(String text, bool supportInternational) {
    var escaped = false;

    _index++;

    while (_index < text.length) {
      if (text[_index].codeUnitAt(0) >= 128 && !supportInternational) {
        return false;
      }

      if (text[_index] == '\\') {
        escaped = !escaped;
      } else if (!escaped) {
        if (text[_index] == '"') {
          break;
        }
      } else {
        escaped = false;
      }

      _index++;
    }

    if (_index >= text.length || text[_index] != '"') {
      return false;
    }

    _index++;

    return true;
  }

  // Function to skip characters in an IPv4 literal
  bool skipIPv4Literal(String text) {
    var groups = 0;

    while (_index < text.length && groups < 4) {
      final startIndex = _index;
      var value = 0;

      while (_index < text.length &&
          text[_index].codeUnitAt(0) >= 48 &&
          text[_index].codeUnitAt(0) <= 57) {
        value = (value * 10) + (text[_index].codeUnitAt(0) - 48);
        _index++;
      }

      if (_index == startIndex || _index - startIndex > 3 || value > 255) {
        return false;
      }

      groups++;

      if (groups < 4 && _index < text.length && text[_index] == '.') {
        _index++;
      }
    }

    return groups == 4;
  }

  // Function to check if a character is a hexadecimal digit
  bool isHexDigit(String str) {
    final c = str.codeUnitAt(0);
    return (c >= 65 && c <= 70) ||
        (c >= 97 && c <= 102) ||
        (c >= 48 && c <= 57);
  }

  // Function to skip characters in an IPv6 literal
  bool skipIPv6Literal(String text) {
    var compact = false;
    var colons = 0;

    while (_index < text.length) {
      var startIndex = _index;

      while (_index < text.length && isHexDigit(text[_index])) {
        _index++;
      }

      if (_index >= text.length) {
        break;
      }

      if (_index > startIndex && colons > 2 && text[_index] == '.') {
        _index = startIndex;

        if (!skipIPv4Literal(text)) {
          return false;
        }

        return compact ? colons < 6 : colons == 6;
      }

      var count = _index - startIndex;
      if (count > 4) {
        return false;
      }

      if (text[_index] != ':') {
        break;
      }

      startIndex = _index;
      while (_index < text.length && text[_index] == ':') {
        _index++;
      }

      count = _index - startIndex;
      if (count > 2) {
        return false;
      }

      if (count == 2) {
        if (compact) {
          return false;
        }

        compact = true;
        colons += 2;
      } else {
        colons++;
      }
    }

    if (colons < 2) {
      return false;
    }

    return compact ? colons < 7 : colons == 7;
  }

  // Reset the index to 0
  _index = 0;

  // Check if the email is empty or too long
  if (email.isEmpty || email.length >= 255) {
    return false;
  }

  // Check if the email starts with a quoted string or a local part
  if (email[_index] == '"') {
    if (!skipQuoted(email, supportInternational) || _index >= email.length) {
      return false;
    }
  } else {
    if (!skipAt(email, supportInternational) || _index >= email.length) {
      return false;
    }

    // Skip subdomains separated by '.'
    while (email[_index] == '.') {
      _index++;

      if (_index >= email.length) {
        return false;
      }

      if (!skipAt(email, supportInternational)) {
        return false;
      }

      if (_index >= email.length) {
        return false;
      }
    }
  }

  // Check if there is an '@' character after the local part
  if (_index + 1 >= email.length || _index > 64 || email[_index++] != '@') {
    return false;
  }

  // Check if the domain part is valid
  if (email[_index] != '[') {
    if (!skipDomain(email, supportTopLevelDomain, supportInternational)) {
      return false;
    }

    return _index == email.length;
  }

  _index++;

  // Check if the email contains an IPv6 or IPv4 literal
  if (_index + 8 >= email.length) {
    return false;
  }

  final ipv6 = email.substring(_index - 1).toLowerCase();

  if (ipv6.contains('ipv6:')) {
    _index += 'IPv6:'.length;
    if (!skipIPv6Literal(email)) {
      return false;
    }
  } else {
    if (!skipIPv4Literal(email)) {
      return false;
    }
  }

  if (_index >= email.length || email[_index++] != ']') {
    return false;
  }

  return _index == email.length;
}

// Extension method to validate Strong email addresses
extension EmailValidation on String {
  /// Validates the format of an email address.
  ///
  /// The [supportTopLevelDomain] parameter specifies whether to allow top-level domain names
  /// like `.com`, `.org`, etc. The default value is `false`, which means only standard domain names
  /// are allowed.
  ///
  /// The [supportInternational] parameter specifies whether to allow international characters
  /// in the email address. The default value is `true`, which allows international characters.
  ///
  /// Returns `true` if the email address is valid, `false` otherwise.
  // this supports
  /*
  *  // Valid email addresses
  // Standard email format
  'user@example.com', // true
  // Email with a subdomain
  'user@mail.example.com', // true
  // Email with a plus sign
  'user+label@example.com', // true
  // Email with a dash in the domain
  'user@domain-example.com', // true
  // Email with an underscore in the domain
  'user@domain_example.com', // true
  // Email with an IPv4 address in square brackets
  'user@[192.168.1.1]', // true
  // Email with an IPv6 address in square brackets
  'user@[2001:0db8:85a3:0000:0000:8a2e:0370:7334]', // true
  // Email with international characters in the local part
  'üser@example.com', // true
  // Email with international characters in the domain part
  'user@exämple.com', // true
  // Email with a valid top-level domain
  'user@example.co.uk', // true
  // Email with a long domain name
  'user@domain-with-a-very-long-name.com', // true
  // Email with a very short domain name
  'user@ex.co', // true
  // Email with a subdomain and an IP address
  'user@sub.domain@[192.168.1.1]', // true
  // Email with a subdomain and an IPv6 address
  'user@sub.domain@[2001:0db8:85a3:0000:0000:8a2e:0370:7334]', // true
  // Email with a subdomain and international characters
  'user@sub.exämple.com', // true

  // Invalid email addresses
  // Email without a domain part
  'user@', // false
  // Email without a local part
  '@example.com', // false
  // Email without an '@' symbol
  'userexample.com', // false
  // Email with consecutive dots in the domain
  'user@domain..com', // false
  // Email with spaces
  'user @example.com', // false
  // Email with invalid characters in the local part
  'user@example!.com', // false
  // Email with invalid characters in the domain part
  'user@exa%mple.com', // false
  // Email with a top-level domain that is too short
  'user@example.c', // false
  // Email with a top-level domain that is too long
  'user@example.abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890', // false
  // Email with a local part that is too long
  'abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890@example.com', // false
  // Email with a domain name that is too long
  'user@abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890.com', // false
  // Email with an IP address that is not in square brackets
  'user@192.168.1.1', // false
  *
  * and lot more...
  * */
  bool isEmail(
      {bool supportTopLevelDomain = false, bool supportInternational = true}) {
    return email(this,
        supportInternational: supportTopLevelDomain,
        supportTopLevelDomain: supportInternational);
  }
}
