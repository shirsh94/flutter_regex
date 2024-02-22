import 'package:flutter_regex/src/flutter_regex_pattern.dart';
import 'package:flutter_regex/src/flutter_regex_validator.dart';

extension StringExtensions on String {
  /// Username regex
  ///
  /// Minimum 3 characters
  /// Allowing "_" and "." in middle of name
  bool isUsername() => RegexVal.hasMatch(
        this,
        RegexPattern.username,
      );

  /// Username regex (v2)
  ///
  /// May start with @
  /// Minimum 3 characters
  /// Allowed to use alphanumeric, underscore ("_"), dash ("-"), and dot (".") characters.
  /// Has only one symbols in a row.
  /// Symbols can only be used in the middle of name.
  bool isUsernameV2() => RegexVal.hasMatch(
        this,
        RegexPattern.usernameV2,
      );

  /// Username (Google) regex
  ///
  /// Minimum 6 characters, maximum 30 characters
  /// Contain letters (a-z), numbers (0-9), and periods (.).
  /// Must start and end with with letters or numbers.
  /// Can't have consecutive period (.).
  bool isUsernameGoogle() => RegexVal.hasMatch(
        this,
        RegexPattern.usernameGoogle,
      );

  /// Username (Instagram) regex
  ///
  /// May start with @
  /// Minimum 3 characters, maximum 30 characters
  /// Allow aplhanumeric, "_" and "." characters
  /// Must not start or end with "."
  bool isUsernameInstagram() => RegexVal.hasMatch(
        this,
        RegexPattern.usernameInstagram,
      );

  /// Username (Discord) regex
  ///
  /// Reference: https://discord.com/developers/docs/resources/user#usernames-and-nicknames
  bool isUsernameDiscord() => RegexVal.hasMatch(
        this,
        RegexPattern.usernameDiscord,
      );

  /// Email regex
  ///
  /// References: [RFC2822 Email Validation](https://regexr.com/2rhq7) by Triple-axis
  bool isEmail() => RegexVal.hasMatch(
        this,
        RegexPattern.email,
      );

  /// URL regex
  ///
  /// Eg:
  /// - https://medium.com/@diegoveloper/flutter-widget-size-and-position-b0a9ffed9407
  /// - https://www.youtube.com/watch?v=COYFmbVEH0k
  /// - https://stackoverflow.com/questions/53913192/flutter-change-the-width-of-an-alertdialog/57688555
  bool isUrl() => RegexVal.hasMatch(this, RegexPattern.url);

  /// URI regex
  ///
  /// Examples:
  /// - https://medium.com/@diegoveloper/flutter-widget-size-and-position-b0a9ffed9407
  /// - https://www.youtube.com/watch?v=COYFmbVEH0k
  /// - https://stackoverflow.com/questions/53913192/flutter-change-the-width-of-an-alertdialog/57688555
  /// - http://192.168.0.1:8080
  /// - https://john.doe@www.example.com:123/forum/questions/?tag=networking&order=newest#top
  /// - http://a/b/c/d;p?q
  /// - twitter://
  /// - fb://profile/33138223345
  /// - mailto:John.Doe@example.com
  /// - ldap://[2001:db8::7]/c=GB?objectClass?one
  /// - tel:+1-816-555-1212
  /// - telnet://192.0.2.16:80/
  /// - news:comp.infosystems.www.servers.unix
  /// - urn:oasis:names:specification:docbook:dtd:xml:4.1.2
  ///
  /// Reference:
  /// https://datatracker.ietf.org/doc/html/rfc3986
  /// https://en.wikipedia.org/wiki/Uniform_Resource_Identifier
  bool isUri() => RegexVal.hasMatch(
        this,
        RegexPattern.uri,
      );

  /// Phone Number regex
  ///
  /// Must be started either with "0", "+", "+XX <X between 2 to 4 digit>", or "(+XX <X between 2 to 3 digit>)"
  /// It is possible to add whitespace separating digit with "+" or "(+XX)"
  ///
  /// Examples:
  /// - 05555555555
  /// - +555 5555555555
  /// - (+123) 5555555555
  /// - (555) 5555555555
  /// - +5555 5555555555
  bool isPhone() => RegexVal.hasMatch(
        this,
        RegexPattern.phone,
      );

  /// Hexadecimal regex
  bool isHex() => RegexVal.hasMatch(
        this,
        RegexPattern.hexadecimal,
      );

  /// Image vector regex
  bool isVector() => RegexVal.hasMatch(
        this,
        RegexPattern.vector,
      );

  /// Image regex
  bool isImage() => RegexVal.hasMatch(
        this,
        RegexPattern.image,
      );

  /// Audio regex
  bool isAudio() => RegexVal.hasMatch(
        this,
        RegexPattern.audio,
      );

  /// Video regex
  bool isVideo() => RegexVal.hasMatch(
        this,
        RegexPattern.video,
      );

  /// Txt regex
  bool isTxt() => RegexVal.hasMatch(
        this,
        RegexPattern.txt,
      );

  /// Document regex
  bool isDoc() => RegexVal.hasMatch(
        this,
        RegexPattern.doc,
      );

  /// Excel regex
  bool isExcel() => RegexVal.hasMatch(
        this,
        RegexPattern.excel,
      );

  /// PPT regex
  bool isPPT() => RegexVal.hasMatch(
        this,
        RegexPattern.ppt,
      );

  /// APK regex
  bool isApk() => RegexVal.hasMatch(
        this,
        RegexPattern.apk,
      );

  /// IPA regex
  bool isIpa() => RegexVal.hasMatch(
        this,
        RegexPattern.ipa,
      );

  /// PDF regex
  bool isPdf() => RegexVal.hasMatch(
        this,
        RegexPattern.pdf,
      );

  /// HTML regex
  bool isHtml() => RegexVal.hasMatch(
        this,
        RegexPattern.html,
      );

  /// DateTime regex (UTC)
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
  bool isDateTimeUTC() => RegexVal.hasMatch(
        this,
        RegexPattern.dateTimeUTC,
      );

  /// Date Time regex
  /// Return [true] to utc & common formatted date time.
  ///
  /// Valid Formats:
  /// - All DateTime regex (UTC) valid examples
  /// - many combination of `YYYY-MM-DD HH:mm:ss`
  /// - HH:mm AM (or PM)
  /// - MMMM yyyy
  /// - MMM, d yyyy
  /// - etc.
  ///
  /// Examples:
  /// - 2018-01-04T05:52:34
  /// - 2018-01-04
  /// - 2018-01-04 05:52
  /// - 01/Oct/04 01:23
  /// - May 16, 2023
  /// - 07:00 PM
  /// - Wednesday, 21 May 2023
  /// - 01/25
  /// - 00:30:20
  /// - Wed, Jan 26
  /// - etc.
  bool isDateTime() => RegexVal.hasMatch(
        this,
        RegexPattern.dateTime,
      );

  /// Binary regex
  /// Consist only 0 & 1
  bool isBinary() => RegexVal.hasMatch(
        this,
        RegexPattern.binary,
      );

  /// MD5 regex
  bool isMD5() => RegexVal.hasMatch(
        this,
        RegexPattern.md5,
      );

  /// CVV regex
  bool isCVV() => RegexVal.hasMatch(
        this,
        RegexPattern.cvv,
      );

  /// SHA1 regex
  bool isSHA1() => RegexVal.hasMatch(
        this,
        RegexPattern.sha1,
      );

  /// SHA256 regex
  bool isSHA256() => RegexVal.hasMatch(
        this,
        RegexPattern.sha256,
      );

  /// SSN (Social Security Number) regex
  bool isSSN() => RegexVal.hasMatch(
        this,
        RegexPattern.ssn,
      );

  /// IPv4 regex
  bool isIPV4() => RegexVal.hasMatch(
        this,
        RegexPattern.ipv4,
      );

  /// IPv6 regex
  bool isIPV6() => RegexVal.hasMatch(
        this,
        RegexPattern.ipv6,
      );

  /// ISBN 10 & 13 regex
  bool isISBN() => RegexVal.hasMatch(
        this,
        RegexPattern.isbn,
      );

  /// Github repository regex
  bool isGithub() => RegexVal.hasMatch(
        this,
        RegexPattern.github,
      );

  /// Passport No. regex
  bool isPassport() => RegexVal.hasMatch(
        this,
        RegexPattern.passport,
      );

  /// Currency regex
  bool isCurrency() => RegexVal.hasMatch(
        this,
        RegexPattern.currency,
      );

  /// Numeric Only regex
  bool isNumeric() => RegexVal.hasMatch(
        this,
        RegexPattern.numericOnly,
      );

  /// Alphabet Only regex
  bool isAlphabet() => RegexVal.hasMatch(
        this,
        RegexPattern.alphabetOnly,
      );

  /// Alphabet & Numeric Only regex
  bool isAlphabetNumeric() => RegexVal.hasMatch(
        this,
        RegexPattern.alphaNumericOnly,
      );

  /// Alphabet, Numeric, Symbol Only regex
  bool isAlphabetNumericSymbol() => RegexVal.hasMatch(
        this,
        RegexPattern.alphaNumericSymbolOnly,
      );

  /// Password (Easy) Regex
  ///
  /// No whitespace allowed
  /// Minimum characters: 8
  bool isPasswordEasy() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordEasy,
      );

  /// Password (Easy) Regex
  ///
  /// Minimum characters: 8
  bool isPasswordEasyWithspace() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordEasyWhitespace,
      );

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal1() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordNormal1,
      );

  /// Password (Normal) Regex
  ///
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal1Withspace() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordNormal1Whitespace,
      );

  /// Password (Normal) Regex
  ///
  /// No symbolic characters allowed
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal2() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordNormal2,
      );

  /// Password (Normal) Regex
  ///
  /// No symbolic characters allowed
  /// Must contains: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal2Withspace() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordNormal2Whitespace,
      );

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal3() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordNormal3,
      );

  /// Password (Normal) Regex
  ///
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal3Withspace() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordNormal3Whitespace,
      );

  /// Password (Hard) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum characters: 8
  bool isPasswordHard() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordHard,
      );

  /// Password (Hard) Regex
  ///
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum characters: 8
  bool isPasswordHardWithspace() => RegexVal.hasMatch(
        this,
        RegexPattern.passwordHardWhitespace,
      );

  /// UUID
  ///
  /// Reference: https://ihateregex.io/expr/uuid/
  bool isUUID() => RegexVal.hasMatch(
        this,
        RegexPattern.uuid,
      );

  /// Bitcoin Address
  ///
  /// Consist of 26-35 (42 on bc1) alphanumeric characters.
  /// Starts with 1, 3, or bc1.
  /// It contains digits in the range of 0 to 9.
  /// The uppercase letter O and the uppercase letter I are not used to avoid visual ambiguity.
  ///
  /// References:
  /// https://bitcoin.design/guide/glossary/address/
  /// https://ihateregex.io/expr/bitcoin-address/
  /// https://www.geeksforgeeks.org/regular-expression-to-validate-a-bitcoin-address/
  /// https://en.bitcoin.it/wiki/Invoice_address
  bool isBitcoinAddress() => RegexVal.hasMatch(
        this,
        RegexPattern.bitcoinAddress,
      );

  /// Bitcoin (Taproot) Address
  ///
  /// Pay-to-Taproot (P2TR)
  /// Invoice address format: Bech32m
  /// 62 alphanumeric characters, case insensitive
  /// Starts with bc1p.
  ///
  /// References:
  /// https://bitcoin.design/guide/glossary/address/
  /// https://blog.trezor.io/bitcoin-addresses-and-how-to-use-them-35e7312098ff
  bool isBitcoinTaprootAddress() => RegexVal.hasMatch(
        this,
        RegexPattern.bitcoinTaprootAddress,
      );

  /// Bitcoin (Segwit) Address
  ///
  /// Validates if the given string is a Bitcoin (Segwit) address.
  /// Bitcoin Segwit addresses are Pay-to-Witness-Public-Key-hash (P2WPKH) addresses
  /// using the Bech32m invoice address format.
  /// They consist of 42 alphanumeric characters, are case insensitive, and start with 'bc1q'.
  ///
  /// References:
  /// - https://bitcoin.design/guide/glossary/address/
  /// - https://blog.trezor.io/bitcoin-addresses-and-how-to-use-them-35e7312098ff
  bool isBitcoinSegwitAddress() => RegexVal.hasMatch(
        this,
        RegexPattern.bitcoinSegwitAddress,
      );

  /// Ethereum Address
  ///
  /// Validates if the given string is an Ethereum address.
  /// Ethereum addresses are alphanumeric strings with a length of 42 characters.
  /// They are case insensitive and do not have a specific prefix.
  ///
  /// Reference: https://www.regextester.com/99711
  bool isEthereumAddress() => RegexVal.hasMatch(
        this,
        RegexPattern.ethereumAddress,
      );

  /// Emoji validator
  ///
  /// Validates if the given string contains an emoji.
  /// Emojis are pictograms that can be used in text messages and other contexts.
  bool isEmoji() => RegexVal.hasMatch(
        this,
        RegexPattern.emoji,
      );

  /// MacAddress
  ///
  /// Validates if the given string is a MAC address.
  /// MAC addresses are unique identifiers assigned to network interfaces for communications
  /// on a network segment.
  bool isMacAddress() => RegexVal.hasMatch(
        this,
        RegexPattern.macAddress,
      );

  /// CreditCard
  ///
  /// Validates if the given string is a credit card number.
  /// Credit card numbers are typically numeric and follow a specific pattern based on the card issuer.
  bool isCreditCard() => RegexVal.hasMatch(
        this,
        RegexPattern.creditCard,
      );

  /// youtube
  ///
  /// Validates if the given string is a valid YouTube video ID.
  /// YouTube video IDs are alphanumeric strings that identify a specific video on YouTube.
  bool isYoutube() => RegexVal.hasMatch(
        this,
        RegexPattern.youtube,
      );

  /// youtube
  ///
  /// Validates if the given string is a valid Twitter username.
  /// Twitter usernames start with an '@' symbol followed by alphanumeric characters and underscores.
  bool isTwitter() => RegexVal.hasMatch(
        this,
        RegexPattern.twitter,
      );

  /// romanNumerals
  ///
  /// Validates if the given string is a valid Roman numeral.
  /// Roman numerals are a numeral system originating in ancient Rome, based on specific letters of the alphabet.
  bool isRomanNumerals() => RegexVal.hasMatch(
        this,
        RegexPattern.romanNumerals,
      );

  /// sudoku
  ///
  /// Validates if the given string is a valid Sudoku puzzle.
  /// Sudoku puzzles are a popular number puzzle game that require filling a 9x9 grid with digits so that each column,
  /// each row, and each of the nine 3x3 subgrids that compose the grid contain all of the digits from 1 to 9.
  bool isSudoku() => RegexVal.hasMatch(
        this,
        RegexPattern.sudoku,
      );

  /// dnaSequences
  ///
  /// Validates if the given string is a valid DNA sequence.
  /// DNA sequences are sequences of nucleotides that encode genetic information.
  bool isDnaSequences() => RegexVal.hasMatch(
        this,
        RegexPattern.dnaSequences,
      );

  /// time12h
  ///
  /// Validates if the given string is a valid 12-hour time format.
  /// 12-hour time format is a way of telling time in which the day is divided into two periods:
  /// the first period runs from midnight to noon (12:00 AM to 11:59 AM),
  /// and the second period runs from noon to midnight (12:00 PM to 11:59 PM).
  bool isTime12h() => RegexVal.hasMatch(
        this,
        RegexPattern.time12h,
      );

  /// time24h
  ///
  /// Validates if the given string is a valid 24-hour time format.
  /// 24-hour time format is a way of telling time in which the day is divided into 24 hours,
  /// starting at midnight (00:00) and ending at 23:59.
  bool isTime24h() => RegexVal.hasMatch(
        this,
        RegexPattern.time24h,
      );

  /// time24h
  ///
  /// Validates if the given string is a positive integer.
  /// Positive integers are whole numbers greater than zero.
  bool isPositiveInteger() => RegexVal.hasMatch(
        this,
        RegexPattern.positiveInteger,
      );

  /// negativeInteger
  ///
  /// Validates if the given string is a negative integer.
  /// Negative integers are whole numbers less than zero.
  bool isNegativeInteger() => RegexVal.hasMatch(
        this,
        RegexPattern.negativeInteger,
      );

  /// negativeInteger
  ///
  /// Validates if the given string is a decimal number.
  /// Decimal numbers are numbers that can have a fractional part, represented with a decimal point.
  bool isDecimalNumber() => RegexVal.hasMatch(
        this,
        RegexPattern.decimalNumber,
      );

  /// negativeInteger
  ///
  /// Validates if the given string is a floating-point number.
  /// Floating-point numbers are numbers that can have a fractional part, represented with a decimal point,
  /// and can also use scientific notation.
  bool isFloatingPointNumber() => RegexVal.hasMatch(
        this,
        RegexPattern.floatingPointNumber,
      );

  /// base64Encoded
  ///
  /// Validates if the given string is a base64 encoded string.
  /// Base64 encoding is a method of encoding binary data into an ASCII string format.
  bool isBase64Encoded() => RegexVal.hasMatch(
        this,
        RegexPattern.base64Encoded,
      );

  /// base64Encoded
  ///
  /// Validates if the given string is a JWT (JSON Web Token).
  /// JWTs are a compact, URL-safe means of representing claims to be transferred between two parties.
  bool isJwt() => RegexVal.hasMatch(
        this,
        RegexPattern.jwt,
      );

  /// rgbColorCode
  ///
  /// Validates if the given string is a valid RGB color code.
  /// RGB color codes are hexadecimal representations of colors in the RGB color model.
  bool isRgbColorCode() => RegexVal.hasMatch(
        this,
        RegexPattern.rgbColorCode,
      );

  /// rgbColorCode
  ///
  /// Validates if the given string is a valid HSL color code.
  /// HSL color codes are representations of colors in the HSL (Hue, Saturation, Lightness) color model.
  bool isHslColorCode() => RegexVal.hasMatch(
        this,
        RegexPattern.hslColorCode,
      );

  /// sqlStatement
  ///
  /// Validates if the given string is a valid SQL statement.
  /// SQL statements are used to perform operations on a database, such as querying or modifying data.
  bool isSqlStatement() => RegexVal.hasMatch(
        this,
        RegexPattern.sqlStatement,
      );

  /// isin
  ///
  /// Validates if the given string is a valid ISIN (International Securities Identification Number).
  /// ISINs are codes that uniquely identify a specific securities issue.
  bool isISIN() => RegexVal.hasMatch(
        this,
        RegexPattern.isin,
      );

  /// gpgKeyId
  ///
  /// Validates if the given string is a valid GPG (GNU Privacy Guard) key ID.
  /// GPG key IDs are identifiers for GPG keys used in encryption and digital signatures.
  bool isGpgKeyId() => RegexVal.hasMatch(
        this,
        RegexPattern.gpgKeyId,
      );

  /// mimeType
  ///
  /// Validates if the given string is a valid MIME (Multipurpose Internet Mail Extensions) type.
  /// MIME types are used to identify the type of data in a file or data stream.
  bool isMIMEType() => RegexVal.hasMatch(
        this,
        RegexPattern.mimeType,
      );

  /// phoneNumberUS
  ///
  /// Validates if the given string is a valid US phone number.
  /// US phone numbers are 10-digit numbers that can have various formats, such as (XXX) XXX-XXXX.
  bool isPhoneNumberUS() => RegexVal.hasMatch(
        this,
        RegexPattern.phoneNumberUS,
      );

  /// jsonObject
  ///
  /// Validates if the given string is a valid JSON object.
  /// JSON objects are key-value pairs enclosed in curly braces, representing structured data.
  bool isJsonObject() => RegexVal.hasMatch(
        this,
        RegexPattern.jsonObject,
      );

  /// jsonArray
  ///
  /// Validates if the given string is a valid JSON array.
  /// JSON arrays are ordered lists of values enclosed in square brackets, representing structured data.
  bool isJsonArray() => RegexVal.hasMatch(
        this,
        RegexPattern.jsonArray,
      );

  /// cssSelector
  ///
  /// Validates if the given string is a valid CSS selector.
  /// CSS selectors are patterns used to select and style elements in HTML documents.
  bool isCSSSelector() => RegexVal.hasMatch(
        this,
        RegexPattern.cssSelector,
      );

  /// octal
  ///
  /// Validates if the given string is a valid octal number.
  /// Octal numbers are base-8 numbers using digits from 0 to 7.
  bool isOctal() => RegexVal.hasMatch(
        this,
        RegexPattern.octal,
      );

  /// scientificNotation
  ///
  /// Validates if the given string is in scientific notation.
  /// Scientific notation is a way of expressing numbers that are too large or too small to be conveniently written in decimal form.
  bool isScientificNotation() => RegexVal.hasMatch(
        this,
        RegexPattern.scientificNotation,
      );

  /// phpBlock
  ///
  /// Validates if the given string is a valid PHP code block.
  /// PHP code blocks are sections of PHP code enclosed in <?php ?> tags.
  bool isPhpBlock() => RegexVal.hasMatch(
        this,
        RegexPattern.phpBlock,
      );

  /// pythonFunctionDeclaration
  ///
  /// Validates if the given string is a valid Python function declaration.
  /// Python function declarations define named blocks of code that can be called and reused.
  bool ispythonFunctionDeclaration() => RegexVal.hasMatch(
        this,
        RegexPattern.pythonFunctionDeclaration,
      );

  /// iban
  ///
  /// Validates if the given string is a valid IBAN (International Bank Account Number).
  /// IBANs are codes used to identify bank accounts in international transactions.
  bool isIBAN() => RegexVal.hasMatch(
        this,
        RegexPattern.iban,
      );

  /// imei
  ///
  /// Validates if the given string is a valid IMEI (International Mobile Equipment Identity) number.
  /// IMEIs are unique identifiers for mobile devices.
  bool isIMEI() => RegexVal.hasMatch(
        this,
        RegexPattern.imei,
      );

  /// ismn
  ///
  /// Validates if the given string is a valid ISMN (International Standard Music Number).
  /// ISMNs are codes used to uniquely identify musical works.
  bool isISMN() => RegexVal.hasMatch(
        this,
        RegexPattern.ismn,
      );

  /// indianPostalCode
  ///
  /// Validates if the given string is a valid Indian postal code.
  /// Indian postal codes are 6-digit numeric codes used by India Post to identify specific locations.
  bool isIndianPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.indianPostalCode,
      );

  /// canadianPostalCode
  ///
  /// Validates if the given string is a valid Canadian postal code.
  /// Canadian postal codes are alphanumeric codes in the format 'A1A 1A1', used by Canada Post for mail delivery.
  bool isCanadianPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.canadianPostalCode,
      );

  /// australianPostalCode
  ///
  /// Validates if the given string is a valid Australian postal code.
  /// Australian postal codes are 4-digit numeric codes used by Australia Post to identify specific locations.
  bool isAustralianPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.australianPostalCode,
      );

  /// germanPostalCode
  ///
  /// Validates if the given string is a valid German postal code.
  /// German postal codes are 5-digit numeric codes used by Deutsche Post for mail delivery.
  bool isGermanPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.germanPostalCode,
      );

  /// frenchPostalCode
  ///
  /// Validates if the given string is a valid French postal code.
  /// French postal codes are 5-digit numeric codes used by La Poste for mail delivery.
  bool isFrenchPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.frenchPostalCode,
      );

  /// italianPostalCode
  ///
  /// Validates if the given string is a valid Italian postal code.
  /// Italian postal codes are 5-digit numeric codes used by Poste Italiane for mail delivery.
  bool isItalianPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.italianPostalCode,
      );

  /// spanishPostalCode
  ///
  /// Validates if the given string is a valid Spanish postal code.
  /// Spanish postal codes are 5-digit numeric codes used by Correos for mail delivery.
  bool isSpanishPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.spanishPostalCode,
      );

  /// japanesePostalCode
  ///
  /// Validates if the given string is a valid Japanese postal code.
  /// Japanese postal codes are 7-digit numeric codes used by Japan Post for mail delivery.
  bool isJapanesePostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.japanesePostalCode,
      );

  /// southAfricanPostalCode
  ///
  /// Validates if the given string is a valid South African postal code.
  /// South African postal codes are 4-digit numeric codes used by South African Post Office for mail delivery.
  bool isSouthAfricanPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.southAfricanPostalCode,
      );

  /// brazilianPostalCode
  ///
  /// Validates if the given string is a valid Brazilian postal code.
  /// Brazilian postal codes are 8-digit numeric codes used by Correios for mail delivery.
  bool isBrazilianPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.brazilianPostalCode,
      );

  /// russianPostalCode
  ///
  /// Validates if the given string is a valid Russian postal code.
  /// Russian postal codes are 6-digit numeric codes used by Russian Post for mail delivery.
  bool isRussianPostalCode() => RegexVal.hasMatch(
        this,
        RegexPattern.russianPostalCode,
      );

  /// latLongCoordinatesDecimal
  ///
  /// Validates if the given string is a valid latitude and longitude coordinates in decimal format.
  /// Latitude and longitude coordinates are used to specify a location on the Earth's surface.
  bool isLatLongCoordinatesDecimal() => RegexVal.hasMatch(
        this,
        RegexPattern.latLongCoordinatesDecimal,
      );

  /// googleAnalyticsTrackingId
  ///
  /// Validates if the given string is a valid Google Analytics Tracking ID.
  /// Google Analytics Tracking IDs are unique identifiers used by Google Analytics to track website traffic.
  bool isGoogleAnalyticsTrackingId() => RegexVal.hasMatch(
        this,
        RegexPattern.googleAnalyticsTrackingId,
      );

  /// googleCloudStorageUri
  ///
  /// Validates if the given string is a valid Google Cloud Storage URI.
  /// Google Cloud Storage URIs are used to identify objects stored in Google Cloud Storage.
  bool isGoogleCloudStorageUri() => RegexVal.hasMatch(
        this,
        RegexPattern.googleCloudStorageUri,
      );

  /// jdbcConnectionString
  ///
  /// Validates if the given string is a valid JDBC (Java Database Connectivity) connection string.
  /// JDBC connection strings are used to connect to databases using the JDBC API.
  bool isJdbcConnectionString() => RegexVal.hasMatch(
        this,
        RegexPattern.jdbcConnectionString,
      );

  /// pangram
  ///
  /// Validates if the given string is a pangram.
  /// Pangrams are sentences that contain every letter of the alphabet at least once.
  bool isPangram() => RegexVal.hasMatch(
        this,
        RegexPattern.pangram,
      );

  /// Checks if the string is a valid Aadhar card number in India.
  bool isAadharCardNumberIndia() => RegexVal.hasMatch(
        this,
        RegexPattern.aadharCardNumberIndia,
      );

  /// Checks if the string is a valid PAN card number in India.
  bool isPanCardNumberIndia() => RegexVal.hasMatch(
        this,
        RegexPattern.panCardNumberIndia,
      );

  /// Checks if the string is a valid passport number in India.
  bool isPassportNumberIndia() => RegexVal.hasMatch(
        this,
        RegexPattern.passportNumberIndia,
      );

  /// Checks if the string is a valid driving license number in India.
  bool isDrivingLicenseNumberIndia() => RegexVal.hasMatch(
        this,
        RegexPattern.drivingLicenseNumberIndia,
      );

  /// Checks if the string is a valid voter ID number in India.
  bool isVoterIdNumberIndia() => RegexVal.hasMatch(
        this,
        RegexPattern.voterIdNumberIndia,
      );

  /// Checks if the string is a valid GST number in India.
  bool isGSTNumberIndia() => RegexVal.hasMatch(
        this,
        RegexPattern.gstNumberIndia,
      );

  /// Checks if the string is a valid IFSC code in India.
  bool isIFSCCodeIndia() => RegexVal.hasMatch(this, RegexPattern.ifscCodeIndia);

  /// Checks if the string is a valid vehicle registration number in India.
  bool isVehicleRegNumberIndia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberIndia);

  /// Checks if the string is a valid ration card number in India.
  bool isRationCardNumberIndia() =>
      RegexVal.hasMatch(this, RegexPattern.rationCardNumberIndia);

  /// Checks if the string is a valid PIN code in India.
  bool isPinCodeIndia() => RegexVal.hasMatch(this, RegexPattern.pinCodeIndia);

  /// Checks if the string is a valid SSN in the USA.
  bool isSSNUSA() => RegexVal.hasMatch(this, RegexPattern.ssnUSA);

  /// Checks if the string is a valid passport number in the USA.
  bool isPassportNumberUSA() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberUSA);

  /// Checks if the string is a valid driving license number in the USA.
  bool isDrivingLicenseNumberUSA() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberUSA);

  /// Checks if the string is a valid VIN in the USA.
  bool isVINUSA() => RegexVal.hasMatch(this, RegexPattern.vinUSA);

  /// Checks if the string is a valid TIN in the USA.
  bool isTINUSA() => RegexVal.hasMatch(this, RegexPattern.tinUSA);

  /// Checks if the string is a valid EIN in the USA.
  bool isEINUSA() => RegexVal.hasMatch(this, RegexPattern.einUSA);

  /// Checks if the string is a valid Medicare number in the USA.
  bool isMedicareNumberUSA() =>
      RegexVal.hasMatch(this, RegexPattern.medicareNumberUSA);

  /// Checks if the string is a valid FFL number in the USA.
  bool isFFLNumberUSA() => RegexVal.hasMatch(this, RegexPattern.fflNumberUSA);

  /// Checks if the string is a valid FCC number in the USA.
  bool isFCCNumberUSA() => RegexVal.hasMatch(this, RegexPattern.fccNumberUSA);

  /// Checks if the string is a valid DOT number in the USA.
  bool isDOTNumberUSA() => RegexVal.hasMatch(this, RegexPattern.dotNumberUSA);

  /// Checks if the string is a valid resident ID in China.
  bool isResidentIdChina() =>
      RegexVal.hasMatch(this, RegexPattern.residentIdChina);

  /// Checks if the string is a valid passport number in China.
  bool isPassportNumberChina() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberChina);

  /// Checks if the string is a valid HKID in China.
  bool isHKIDChina() => RegexVal.hasMatch(this, RegexPattern.hkidChina);

  /// Checks if the string is a valid Macau ID in China.
  bool isMacauIdChina() => RegexVal.hasMatch(this, RegexPattern.macauIdChina);

  /// Checks if the string is a valid TW ID in China.
  bool isTWIdChina() => RegexVal.hasMatch(this, RegexPattern.twIdChina);

  /// Checks if the string is a valid TW permit in China.
  bool isTWPermitChina() => RegexVal.hasMatch(this, RegexPattern.twPermitChina);

  /// Checks if the string is a valid HK/Macau permit in China.
  bool isHKMacauPermitChina() =>
      RegexVal.hasMatch(this, RegexPattern.hkMacauPermitChina);

  /// Checks if the string is a valid TW permit for HK/Macau in China.
  bool isTWPermitHKMacauChina() =>
      RegexVal.hasMatch(this, RegexPattern.twPermitHkMacauChina);

  /// Checks if the string is a valid HK/Macau permit to Mainland China.
  bool isHKMacauPermitToMainlandChina() =>
      RegexVal.hasMatch(this, RegexPattern.hkMacauPermitToMainlandChina);

  /// Checks if the string is a valid TW permit to Mainland China.
  bool isTWPermitToMainlandChina() =>
      RegexVal.hasMatch(this, RegexPattern.twPermitToMainlandChina);

  /// Checks if the string is a valid NIK in Indonesia.
  bool isNIKIndonesia() => RegexVal.hasMatch(this, RegexPattern.nikIndonesia);

  /// Checks if the string is a valid KK in Indonesia.
  bool isKKIndonesia() => RegexVal.hasMatch(this, RegexPattern.kkIndonesia);

  /// Checks if the string is a valid driving license number in Indonesia.
  bool isDrivingLicenseNumberIndonesia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberIndonesia);

  /// Checks if the string is a valid passport number in Indonesia.
  bool isPassportNumberIndonesia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberIndonesia);

  /// Checks if the string is a valid NPWP in Indonesia.
  bool isNPWPIndonesia() => RegexVal.hasMatch(this, RegexPattern.npwpIndonesia);

  /// Checks if the string is a valid vehicle registration number in Indonesia.
  bool isVehicleRegNumberIndonesia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberIndonesia);

  /// Checks if the string is a valid BPJS in Indonesia.
  bool isBPJSIndonesia() => RegexVal.hasMatch(this, RegexPattern.bpjsIndonesia);

  /// Checks if the string is a valid BPJS health number in Indonesia.
  bool isBPJSHealthIndonesia() =>
      RegexVal.hasMatch(this, RegexPattern.bpjsHealthIndonesia);

  /// Checks if the string is a valid student ID in Indonesia.
  bool isStudentIdIndonesia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdIndonesia);

  /// Checks if the string is a valid bank account number in Indonesia.
  bool isBankAccountNumberIndonesia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberIndonesia);

  /// Checks if the string is a valid CNIC in Pakistan.
  bool isCNICPakistan() => RegexVal.hasMatch(this, RegexPattern.cnicPakistan);

  /// Checks if the string is a valid NTN in Pakistan.
  bool isNTNPakistan() => RegexVal.hasMatch(this, RegexPattern.ntnPakistan);

  /// Checks if the string is a valid STRN in Pakistan.
  bool isSTRNPakistan() => RegexVal.hasMatch(this, RegexPattern.strnPakistan);

  /// Checks if the string is a valid driving license number in Pakistan.
  bool isDrivingLicenseNumberPakistan() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberPakistan);

  /// Checks if the string is a valid passport number in Pakistan.
  bool isPassportNumberPakistan() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberPakistan);

  /// Checks if the string is a valid NICOP in Pakistan.
  bool isNICOPPakistan() => RegexVal.hasMatch(this, RegexPattern.nicopPakistan);

  /// Checks if the string is a valid POC in Pakistan.
  bool isPOCPakistan() => RegexVal.hasMatch(this, RegexPattern.pocPakistan);

  /// Checks if the string is a valid vehicle registration number in Pakistan.
  bool isVehicleRegNumberPakistan() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberPakistan);

  /// Checks if the string is a valid IBAN in Pakistan.
  bool isIBANPakistan() => RegexVal.hasMatch(this, RegexPattern.ibanPakistan);

  /// Checks if the string is a valid NSO account number in Pakistan.
  bool isNSOAccountPakistan() =>
      RegexVal.hasMatch(this, RegexPattern.nsoAccountPakistan);

  /// Checks if the string is a valid CPF in Brazil.
  bool isCPFBrazil() => RegexVal.hasMatch(this, RegexPattern.cpfBrazil);

  /// Checks if the string is a valid RG in Brazil.
  bool isRGBrazil() => RegexVal.hasMatch(this, RegexPattern.rgBrazil);

  /// Checks if the string is a valid passport number in Brazil.
  bool isPassportNumberBrazil() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberBrazil);

  /// Checks if the string is a valid driving license number in Brazil.
  bool isDrivingLicenseNumberBrazil() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberBrazil);

  /// Checks if the string is a valid voter ID in Brazil.
  bool isVoterIdBrazil() => RegexVal.hasMatch(this, RegexPattern.voterIdBrazil);

  /// Checks if the string is a valid military service number in Brazil.
  bool isMilitaryServiceBrazil() =>
      RegexVal.hasMatch(this, RegexPattern.militaryServiceBrazil);

  /// Checks if the string is a valid health card number in Brazil.
  bool isHealthCardBrazil() =>
      RegexVal.hasMatch(this, RegexPattern.healthCardBrazil);

  /// Checks if the string is a valid work permit number in Brazil.
  bool isWorkPermitBrazil() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitBrazil);

  /// Checks if the string is a valid professional card number in Brazil.
  bool isProfessionalCardBrazil() =>
      RegexVal.hasMatch(this, RegexPattern.professionalCardBrazil);

  /// Checks if the string is a valid CadÚnico number in Brazil.
  bool isCadUnicoBrazil() =>
      RegexVal.hasMatch(this, RegexPattern.cadUnicoBrazil);

  /// Checks if the string is a valid NIN in Nigeria.
  bool isNINNigeria() => RegexVal.hasMatch(this, RegexPattern.ninNigeria);

  /// Checks if the string is a valid passport number in Nigeria.
  bool isPassportNumberNigeria() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberNigeria);

  /// Checks if the string is a valid driving license number in Nigeria.
  bool isDrivingLicenseNumberNigeria() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberNigeria);

  /// Checks if the string is a valid BVN in Nigeria.
  bool isBVNNigeria() => RegexVal.hasMatch(this, RegexPattern.bvnNigeria);

  /// Checks if the string is a valid TIN in Nigeria.
  bool isTINNigeria() => RegexVal.hasMatch(this, RegexPattern.tinNigeria);

  /// Checks if the string is a valid NIMC number in Nigeria.
  bool isNIMCNigeria() => RegexVal.hasMatch(this, RegexPattern.nimcNigeria);

  /// Checks if the string is a valid PVC number in Nigeria.
  bool isPVCNigeria() => RegexVal.hasMatch(this, RegexPattern.pvcNigeria);

  /// Checks if the string is a valid NHIS number in Nigeria.
  bool isNHISNigeria() => RegexVal.hasMatch(this, RegexPattern.nhisNigeria);

  /// Checks if the string is a valid PenCom number in Nigeria.
  bool isPenComNigeria() => RegexVal.hasMatch(this, RegexPattern.penComNigeria);

  /// Checks if the string is a valid FRSC number in Nigeria.
  bool isFRSCNigeria() => RegexVal.hasMatch(this, RegexPattern.frscNigeria);

  /// Checks if the string is a valid NID in Bangladesh.
  bool isNIDBangladesh() => RegexVal.hasMatch(this, RegexPattern.nidBangladesh);

  /// Checks if the string is a valid birth registration number in Bangladesh.
  bool isBirthRegBangladesh() =>
      RegexVal.hasMatch(this, RegexPattern.birthRegBangladesh);

  /// Checks if the string is a valid driving license number in Bangladesh.
  bool isDrivingLicenseNumberBangladesh() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberBangladesh);

  /// Checks if the string is a valid passport number in Bangladesh.
  bool isPassportNumberBangladesh() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberBangladesh);

  /// Checks if the string is a valid TIN in Bangladesh.
  bool isTINBangladesh() => RegexVal.hasMatch(this, RegexPattern.tinBangladesh);

  /// Checks if the string is a valid voter ID in Bangladesh.
  bool isVoterIdBangladesh() =>
      RegexVal.hasMatch(this, RegexPattern.voterIdBangladesh);

  /// Checks if the string is a valid health card number in Bangladesh.
  bool isHealthCardBangladesh() =>
      RegexVal.hasMatch(this, RegexPattern.healthCardBangladesh);

  /// Checks if the string is a valid freedom fighter certificate number in Bangladesh.
  bool isFreedomFighterCertBangladesh() =>
      RegexVal.hasMatch(this, RegexPattern.freedomFighterCertBangladesh);

  /// Checks if the string is a valid arms license number in Bangladesh.
  bool isArmsLicenseBangladesh() =>
      RegexVal.hasMatch(this, RegexPattern.armsLicenseBangladesh);

  /// Checks if the string is a valid trade license number in Bangladesh.
  bool isTradeLicenseBangladesh() =>
      RegexVal.hasMatch(this, RegexPattern.tradeLicenseBangladesh);

  /// Checks if the string is a valid passport number in Russia.

  bool isPassportNumberRussia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberRussia);

  /// Checks if the string is a valid international passport number in Russia.
  bool isIntPassportNumberRussia() =>
      RegexVal.hasMatch(this, RegexPattern.intPassportNumberRussia);

  /// Checks if the string is a valid internal passport number in Russia.
  bool isInternalPassportNumberRussia() =>
      RegexVal.hasMatch(this, RegexPattern.internalPassportNumberRussia);

  /// Checks if the string is a valid birth certificate number in Russia.
  bool isBirthCertNumberRussia() =>
      RegexVal.hasMatch(this, RegexPattern.birthCertNumberRussia);

  /// Checks if the string is a valid driving license number in Russia.
  bool isDrivingLicenseNumberRussia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberRussia);

  /// Checks if the string is a valid INN in Russia.
  bool isINNRussia() => RegexVal.hasMatch(this, RegexPattern.innRussia);

  /// Checks if the string is a valid insurance account number in Russia.
  bool isInsuranceAccountRussia() =>
      RegexVal.hasMatch(this, RegexPattern.insuranceAccountRussia);

  /// Checks if the string is a valid pension insurance number in Russia.
  bool isPensionInsuranceNumberRussia() =>
      RegexVal.hasMatch(this, RegexPattern.pensionInsuranceNumberRussia);

  /// Checks if the string is a valid state pension insurance number in Russia.
  bool isStatePensionInsuranceNumberRussia() =>
      RegexVal.hasMatch(this, RegexPattern.statePensionInsuranceNumberRussia);

  /// Checks if the string is a valid PAN in Russia.
  bool isPANRussia() => RegexVal.hasMatch(this, RegexPattern.panRussia);

  /// Checks if the string is a valid CURP in Mexico.
  bool isCURPMexico() => RegexVal.hasMatch(this, RegexPattern.curpMexico);

  /// Checks if the string is a valid voter ID in Mexico.
  bool isVoterIdMexico() => RegexVal.hasMatch(this, RegexPattern.voterIdMexico);

  /// Checks if the string is a valid passport number in Mexico.
  bool isPassportNumberMexico() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberMexico);

  /// Checks if the string is a valid driving license number in Mexico.
  bool isDrivingLicenseNumberMexico() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberMexico);

  /// Checks if the string is a valid RFC in Mexico.
  bool isRFCMexico() => RegexVal.hasMatch(this, RegexPattern.rfcMexico);

  /// Checks if the string is a valid foreigners registry number in Mexico.
  bool isForeignersRegistryMexico() =>
      RegexVal.hasMatch(this, RegexPattern.foreignersRegistryMexico);

  /// Checks if the string is a valid IMSS number in Mexico.
  bool isIMSSMexico() => RegexVal.hasMatch(this, RegexPattern.imssMexico);

  /// Checks if the string is a valid Infonavit number in Mexico.
  bool isInfonavitMexico() =>
      RegexVal.hasMatch(this, RegexPattern.infonavitMexico);

  /// Checks if the string is a valid NUT number in Mexico.
  bool isNUTMexico() => RegexVal.hasMatch(this, RegexPattern.nutMexico);

  /// Checks if the string is a valid bank account number in Mexico.
  bool isBankAccountNumberMexico() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberMexico);

  /// Checks if the string is a valid My Number in Japan.
  bool isMyNumberJapan() => RegexVal.hasMatch(this, RegexPattern.myNumberJapan);

  /// Checks if the string is a valid passport number in Japan.
  bool isPassportNumberJapan() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberJapan);

  /// Checks if the string is a valid resident card number in Japan.
  bool isResidentCardJapan() =>
      RegexVal.hasMatch(this, RegexPattern.residentCardJapan);

  /// Checks if the string is a valid driving license number in Japan.
  bool isDrivingLicenseNumberJapan() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberJapan);

  /// Checks if the string is a valid health insurance number in Japan.
  bool isHealthInsuranceNumberJapan() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceNumberJapan);

  /// Checks if the string is a valid pension number in Japan.
  bool isPensionNumberJapan() =>
      RegexVal.hasMatch(this, RegexPattern.pensionNumberJapan);

  /// Checks if the string is a valid tax number in Japan.
  bool isTaxNumberJapan() =>
      RegexVal.hasMatch(this, RegexPattern.taxNumberJapan);

  /// Checks if the string is a valid social insurance number in Japan.
  bool isSocialInsuranceNumberJapan() =>
      RegexVal.hasMatch(this, RegexPattern.socialInsuranceNumberJapan);

  /// Checks if the string is a valid resident registration number in Japan.
  bool isResidentRegistrationNumberJapan() =>
      RegexVal.hasMatch(this, RegexPattern.residentRegistrationNumberJapan);

  /// Checks if the string is a valid bank account number in Japan.
  bool isBankAccountNumberJapan() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberJapan);

  /// Checks if the string is a valid TIN in Ethiopia.
  bool isTINEthiopia() => RegexVal.hasMatch(this, RegexPattern.tinEthiopia);

  /// Checks if the string is a valid passport number in Ethiopia.
  bool isPassportNumberEthiopia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberEthiopia);

  /// Checks if the string is a valid driving license number in Ethiopia.
  bool isDrivingLicenseNumberEthiopia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberEthiopia);

  /// Checks if the string is a valid birth certificate number in Ethiopia.
  bool isBirthCertNumberEthiopia() =>
      RegexVal.hasMatch(this, RegexPattern.birthCertNumberEthiopia);

  /// Checks if the string is a valid ID card number in Ethiopia.
  bool isIdCardNumberEthiopia() =>
      RegexVal.hasMatch(this, RegexPattern.idCardNumberEthiopia);

  /// Checks if the string is a valid bank account number in Ethiopia.
  bool isBankAccountNumberEthiopia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberEthiopia);

  /// Checks if the string is a valid SSN in Ethiopia.
  bool isSSNEthiopia() => RegexVal.hasMatch(this, RegexPattern.ssnEthiopia);

  /// Checks if the string is a valid driver license number in Ethiopia.
  bool isDriverLicenseNumberEthiopia() =>
      RegexVal.hasMatch(this, RegexPattern.driverLicenseNumberEthiopia);

  /// Checks if the string is a valid voter ID in Ethiopia.
  bool isVoterIdEthiopia() =>
      RegexVal.hasMatch(this, RegexPattern.voterIdEthiopia);

  /// Checks if the string is a valid foreign ID in Ethiopia.
  bool isForeignIdEthiopia() =>
      RegexVal.hasMatch(this, RegexPattern.foreignIdEthiopia);

  /// Checks if the string is a valid national ID number in the Philippines.
  bool isNationalIdPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdPhilippines);

  /// Checks if the string is a valid passport number in the Philippines.
  bool isPassportNumberPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberPhilippines);

  /// Checks if the string is a valid driver's license number in the Philippines.
  bool isDrivingLicenseNumberPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberPhilippines);

  /// Checks if the string is a valid SSS number in the Philippines.
  bool isSssNumberPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.sssNumberPhilippines);

  /// Checks if the string is a valid TIN in the Philippines.
  bool isTinPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.tinPhilippines);

  /// Checks if the string is a valid UMID number in the Philippines.
  bool isUmidNumberPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.umidNumberPhilippines);

  /// Checks if the string is a valid postal ID number in the Philippines.
  bool isPostalIdPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.postalIdPhilippines);

  /// Checks if the string is a valid PhilHealth number in the Philippines.
  bool isPhilHealthNumberPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.philHealthNumberPhilippines);

  /// Checks if the string is a valid PRC ID number in the Philippines.
  bool isPrcIdPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.prcIdPhilippines);

  /// Checks if the string is a valid voter ID in the Philippines.
  bool isVoterIdPhilippines() =>
      RegexVal.hasMatch(this, RegexPattern.voterIdPhilippines);

  // **Egypt**
  bool isNationalIdEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdEgypt);

  bool isPassportNumberEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberEgypt);

  bool isDrivingLicenseNumberEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberEgypt);

  bool isTaxCardEgypt() => RegexVal.hasMatch(this, RegexPattern.taxCardEgypt);

  bool isMilitaryIdEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.militaryIdEgypt);

  bool isSocialInsuranceEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.socialInsuranceEgypt);

  bool isHealthInsuranceEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceEgypt);

  bool isVehicleRegNumberEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberEgypt);

  bool isStudentIdEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdEgypt);

  bool isBankAccountNumberEgypt() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberEgypt);

// **Vietnam**
  bool isCitizenIdVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.citizenIdVietnam);

  bool isPassportNumberVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberVietnam);

  bool isDrivingLicenseNumberVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberVietnam);

  bool isTinVietnam() => RegexVal.hasMatch(this, RegexPattern.tinVietnam);

  bool isSocialInsuranceVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.socialInsuranceVietnam);

  bool isHealthInsuranceVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceVietnam);

  bool isBankAccountNumberVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberVietnam);

  bool isVehicleRegNumberVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberVietnam);

  bool isStudentIdVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdVietnam);

  bool isWorkPermitVietnam() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitVietnam);

// **DR Congo**
  bool isNationalIdCongo() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdCongo);

  bool isPassportNumberCongo() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberCongo);

  bool isDrivingLicenseNumberCongo() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberCongo);

  bool isTinCongo() => RegexVal.hasMatch(this, RegexPattern.tinCongo);

  bool isSsnCongo() => RegexVal.hasMatch(this, RegexPattern.ssnCongo);

  bool isHealthInsuranceCongo() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceCongo);

  bool isVoterIdCongo() => RegexVal.hasMatch(this, RegexPattern.voterIdCongo);

  bool isStudentIdCongo() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdCongo);

  bool isBankAccountNumberCongo() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberCongo);

  bool isVehicleRegNumberCongo() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberCongo);

// **Turkey**
  bool isNationalIdTurkey() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdTurkey);

  bool isPassportNumberTurkey() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberTurkey);

  bool isDrivingLicenseNumberTurkey() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberTurkey);

  bool isTinTurkey() => RegexVal.hasMatch(this, RegexPattern.tinTurkey);

  bool isSsnTurkey() => RegexVal.hasMatch(this, RegexPattern.ssnTurkey);

  bool isHealthInsuranceTurkey() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceTurkey);

  bool isBankAccountNumberTurkey() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberTurkey);

  bool isVehicleRegNumberTurkey() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberTurkey);

  bool isStudentIdTurkey() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdTurkey);

  bool isWorkPermitTurkey() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitTurkey);

// **Iran**
  bool isNationalIdIran() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdIran);

  bool isPassportNumberIran() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberIran);

  bool isDrivingLicenseNumberIran() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberIran);

  bool isTinIran() => RegexVal.hasMatch(this, RegexPattern.tinIran);

  bool isSsnIran() => RegexVal.hasMatch(this, RegexPattern.ssnIran);

  bool isHealthInsuranceIran() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceIran);

  bool isBankAccountNumberIran() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberIran);

  bool isVehicleRegNumberIran() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberIran);

  bool isStudentIdIran() => RegexVal.hasMatch(this, RegexPattern.studentIdIran);

  bool isWorkPermitIran() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitIran);

// **Germany**
  bool isIdCardGermany() => RegexVal.hasMatch(this, RegexPattern.idCardGermany);

  bool isPassportNumberGermany() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberGermany);

  bool isDrivingLicenseNumberGermany() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberGermany);

  bool isTinGermany() => RegexVal.hasMatch(this, RegexPattern.tinGermany);

  bool isSsnGermany() => RegexVal.hasMatch(this, RegexPattern.ssnGermany);

  bool isHealthInsuranceGermany() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceGermany);

  bool isBankAccountNumberGermany() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberGermany);

  bool isVehicleRegNumberGermany() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberGermany);

  bool isStudentIdGermany() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdGermany);

  bool isWorkPermitGermany() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitGermany);

// **Thailand**
  bool isNationalIdThailand() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdThailand);

  bool isPassportNumberThailand() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberThailand);

  bool isDrivingLicenseNumberThailand() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberThailand);

  bool isTinThailand() => RegexVal.hasMatch(this, RegexPattern.tinThailand);

  bool isSsnThailand() => RegexVal.hasMatch(this, RegexPattern.ssnThailand);

  bool isHealthInsuranceThailand() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceThailand);

  bool isBankAccountNumberThailand() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberThailand);

// **Thailand**
  bool isVehicleRegNumberThailand() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberThailand);

  bool isStudentIdThailand() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdThailand);

  bool isWorkPermitThailand() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitThailand);

// **United Kingdom**
  bool isNationalInsuranceUK() =>
      RegexVal.hasMatch(this, RegexPattern.nationalInsuranceUK);

  bool isPassportNumberUK() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberUK);

  bool isDrivingLicenseNumberUK() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberUK);

  bool isTinUK() => RegexVal.hasMatch(this, RegexPattern.tinUK);

  bool isNhsNumberUK() => RegexVal.hasMatch(this, RegexPattern.nhsNumberUK);

  bool isBankAccountNumberUK() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberUK);

  bool isStudentIdUK() => RegexVal.hasMatch(this, RegexPattern.studentIdUK);

  bool isVehicleRegNumberUK() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberUK);

  bool isWorkPermitUK() => RegexVal.hasMatch(this, RegexPattern.workPermitUK);

  bool isRailTravelCardUK() =>
      RegexVal.hasMatch(this, RegexPattern.railTravelCardUK);

// **France**
  bool isNationalIdFrance() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdFrance);

  bool isPassportNumberFrance() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberFrance);

  bool isDrivingLicenseNumberFrance() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberFrance);

  bool isTinFrance() => RegexVal.hasMatch(this, RegexPattern.tinFrance);

  bool isSsnFrance() => RegexVal.hasMatch(this, RegexPattern.ssnFrance);

  bool isHealthInsuranceFrance() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceFrance);

  bool isBankAccountNumberFrance() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberFrance);

  bool isVehicleRegNumberFrance() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberFrance);

  bool isStudentIdFrance() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdFrance);

  bool isWorkPermitFrance() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitFrance);

// **Italy**
  bool isCodiceFiscaleItaly() =>
      RegexVal.hasMatch(this, RegexPattern.codiceFiscaleItaly);

  bool isPassportNumberItaly() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberItaly);

  bool isDrivingLicenseNumberItaly() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberItaly);

  bool isTinItaly() => RegexVal.hasMatch(this, RegexPattern.tinItaly);

  bool isHealthInsuranceItaly() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceItaly);

  bool isInpsNumberItaly() =>
      RegexVal.hasMatch(this, RegexPattern.inpsNumberItaly);

  bool isBankAccountNumberItaly() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberItaly);

  bool isVehicleRegNumberItaly() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberItaly);

  bool isStudentIdItaly() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdItaly);

  bool isWorkPermitItaly() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitItaly);

// **Tanzania**
  bool isNationalIdTanzania() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdTanzania);

  bool isPassportNumberTanzania() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberTanzania);

  bool isDrivingLicenseNumberTanzania() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberTanzania);

  bool isTinTanzania() => RegexVal.hasMatch(this, RegexPattern.tinTanzania);

  bool isSsnTanzania() => RegexVal.hasMatch(this, RegexPattern.ssnTanzania);

  bool isHealthInsuranceTanzania() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceTanzania);

  bool isBankAccountNumberTanzania() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberTanzania);

  bool isVehicleRegNumberTanzania() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberTanzania);

  bool isStudentIdTanzania() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdTanzania);

  bool isWorkPermitTanzania() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitTanzania);

// **South Africa**
  bool isIdentityNumberSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.identityNumberSouthAfrica);

  bool isPassportNumberSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSouthAfrica);

  bool isDrivingLicenseNumberSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSouthAfrica);

  bool isTinSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.tinSouthAfrica);

  bool isSsnSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.ssnSouthAfrica);

  bool isHealthInsuranceSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSouthAfrica);

  bool isBankAccountNumberSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSouthAfrica);

  bool isVehicleRegNumberSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSouthAfrica);

  bool isStudentIdSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSouthAfrica);

  bool isWorkPermitSouthAfrica() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSouthAfrica);

// **Myanmar**
  bool isNrcNumberMyanmar() =>
      RegexVal.hasMatch(this, RegexPattern.nrcNumberMyanmar);

  bool isPassportNumberMyanmar() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberMyanmar);

  bool isDrivingLicenseNumberMyanmar() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberMyanmar);

  bool isTinMyanmar() => RegexVal.hasMatch(this, RegexPattern.tinMyanmar);

  bool isSsnMyanmar() => RegexVal.hasMatch(this, RegexPattern.ssnMyanmar);

  bool isHealthInsuranceMyanmar() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceMyanmar);

  bool isBankAccountNumberMyanmar() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberMyanmar);

  bool isVehicleRegNumberMyanmar() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberMyanmar);

  bool isStudentIdMyanmar() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdMyanmar);

  bool isWorkPermitMyanmar() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitMyanmar);

// **Kenya**
  bool isNationalIdKenya() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdKenya);

  bool isPassportNumberKenya() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberKenya);

  bool isDrivingLicenseNumberKenya() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberKenya);

  bool isTinKenya() => RegexVal.hasMatch(this, RegexPattern.tinKenya);

  bool isSsnKenya() => RegexVal.hasMatch(this, RegexPattern.ssnKenya);

  bool isHealthInsuranceKenya() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceKenya);

  bool isBankAccountNumberKenya() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberKenya);

  bool isVehicleRegNumberKenya() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberKenya);

  bool isStudentIdKenya() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdKenya);

  bool isWorkPermitKenya() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitKenya);

// **South Korea**
  bool isResidentRegistrationNumberKorea() =>
      RegexVal.hasMatch(this, RegexPattern.residentRegistrationNumberKorea);

  bool isPassportNumberKorea() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberKorea);

  bool isDrivingLicenseNumberKorea() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberKorea);

  bool isTinKorea() => RegexVal.hasMatch(this, RegexPattern.tinKorea);

  bool isSsnKorea() => RegexVal.hasMatch(this, RegexPattern.ssnKorea);

  bool isHealthInsuranceKorea() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceKorea);

  bool isBankAccountNumberKorea() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberKorea);

  bool isVehicleRegNumberKorea() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberKorea);

  bool isStudentIdKorea() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdKorea);

  bool isWorkPermitKorea() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitKorea);

// **Colombia**
  bool isCedulaColombia() =>
      RegexVal.hasMatch(this, RegexPattern.cedulaColombia);

  bool isPassportNumberColombia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberColombia);

  bool isDrivingLicenseNumberColombia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberColombia);

  bool isNitColombia() => RegexVal.hasMatch(this, RegexPattern.nitColombia);

  bool isSsnColombia() => RegexVal.hasMatch(this, RegexPattern.ssnColombia);

  bool isHealthInsuranceColombia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceColombia);

  bool isBankAccountNumberColombia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberColombia);

  bool isVehicleRegNumberColombia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberColombia);

  bool isStudentIdColombia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdColombia);

  bool isWorkPermitColombia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitColombia);

// **Spain**
  bool isDniSpain() => RegexVal.hasMatch(this, RegexPattern.dniSpain);

  bool isPassportNumberSpain() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSpain);

  bool isDrivingLicenseNumberSpain() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSpain);

  bool isNifSpain() => RegexVal.hasMatch(this, RegexPattern.nifSpain);

  bool isSsnSpain() => RegexVal.hasMatch(this, RegexPattern.ssnSpain);

  bool isHealthInsuranceSpain() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSpain);

  bool isBankAccountNumberSpain() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSpain);

  bool isVehicleRegNumberSpain() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSpain);

  bool isStudentIdSpain() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSpain);

  bool isWorkPermitSpain() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSpain);

// **Uganda**
  bool isNationalIdUganda() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdUganda);

  bool isPassportNumberUganda() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberUganda);

  bool isDrivingLicenseNumberUganda() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberUganda);

  bool isTinUganda() => RegexVal.hasMatch(this, RegexPattern.tinUganda);

  bool isSsnUganda() => RegexVal.hasMatch(this, RegexPattern.ssnUganda);

  bool isHealthInsuranceUganda() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceUganda);

  bool isBankAccountNumberUganda() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberUganda);

  bool isVehicleRegNumberUganda() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberUganda);

  bool isStudentIdUganda() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdUganda);

  bool isWorkPermitUganda() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitUganda);

// **Argentina**
  bool isDniArgentina() => RegexVal.hasMatch(this, RegexPattern.dniArgentina);

  bool isPassportNumberArgentina() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberArgentina);

  bool isDrivingLicenseNumberArgentina() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberArgentina);

  bool isCuitArgentina() => RegexVal.hasMatch(this, RegexPattern.cuitArgentina);

  bool isSsnArgentina() => RegexVal.hasMatch(this, RegexPattern.ssnArgentina);

  bool isHealthInsuranceArgentina() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceArgentina);

  bool isBankAccountNumberArgentina() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberArgentina);

  bool isVehicleRegNumberArgentina() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberArgentina);

  bool isStudentIdArgentina() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdArgentina);

  bool isWorkPermitArgentina() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitArgentina);

// **Algeria**
  bool isNationalIdAlgeria() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdAlgeria);

  bool isPassportNumberAlgeria() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberAlgeria);

  bool isDrivingLicenseNumberAlgeria() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberAlgeria);

  bool isNifAlgeria() => RegexVal.hasMatch(this, RegexPattern.nifAlgeria);

  bool isSsnAlgeria() => RegexVal.hasMatch(this, RegexPattern.ssnAlgeria);

  bool isHealthInsuranceAlgeria() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceAlgeria);

  bool isBankAccountNumberAlgeria() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberAlgeria);

  bool isVehicleRegNumberAlgeria() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberAlgeria);

  bool isStudentIdAlgeria() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdAlgeria);

  bool isWorkPermitAlgeria() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitAlgeria);

// **Sudan**
  bool isNationalIdSudan() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdSudan);

  bool isPassportNumberSudan() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSudan);

  bool isDrivingLicenseNumberSudan() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSudan);

  bool isTinSudan() => RegexVal.hasMatch(this, RegexPattern.tinSudan);

  bool isSsnSudan() => RegexVal.hasMatch(this, RegexPattern.ssnSudan);

  bool isHealthInsuranceSudan() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSudan);

  bool isBankAccountNumberSudan() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSudan);

  bool isVehicleRegNumberSudan() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSudan);

  bool isStudentIdSudan() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSudan);

  bool isWorkPermitSudan() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSudan);

  // **Ukraine**
  bool isIdentificationNumberUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.identificationNumberUkraine);

  bool isPassportNumberUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberUkraine);

  bool isDrivingLicenseNumberUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberUkraine);

  bool isTaxNumberUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.taxNumberUkraine);

  bool isSsnUkraine() => RegexVal.hasMatch(this, RegexPattern.ssnUkraine);

  bool isHealthInsuranceUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceUkraine);

  bool isBankAccountNumberUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberUkraine);

  bool isVehicleRegNumberUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberUkraine);

  bool isStudentIdUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdUkraine);

  bool isWorkPermitUkraine() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitUkraine);

// **Iraq**
  bool isNationalIdIraq() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdIraq);

  bool isPassportNumberIraq() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberIraq);

  bool isDrivingLicenseNumberIraq() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberIraq);

  bool isTinIraq() => RegexVal.hasMatch(this, RegexPattern.tinIraq);

  bool isSsnIraq() => RegexVal.hasMatch(this, RegexPattern.ssnIraq);

  bool isHealthInsuranceIraq() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceIraq);

  bool isBankAccountNumberIraq() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberIraq);

  bool isVehicleRegNumberIraq() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberIraq);

  bool isStudentIdIraq() => RegexVal.hasMatch(this, RegexPattern.studentIdIraq);

  bool isWorkPermitIraq() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitIraq);

// **Afghanistan**
  bool isNationalIdAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdAfghanistan);

  bool isPassportNumberAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberAfghanistan);

  bool isDrivingLicenseNumberAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberAfghanistan);

  bool isTinAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.tinAfghanistan);

  bool isSsnAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.ssnAfghanistan);

  bool isHealthInsuranceAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceAfghanistan);

  bool isBankAccountNumberAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberAfghanistan);

  bool isVehicleRegNumberAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberAfghanistan);

  bool isStudentIdAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdAfghanistan);

  bool isWorkPermitAfghanistan() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitAfghanistan);

// **Poland**
  bool isPeselPoland() => RegexVal.hasMatch(this, RegexPattern.peselPoland);

  bool isPassportNumberPoland() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberPoland);

  bool isDrivingLicenseNumberPoland() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberPoland);

  bool isNipPoland() => RegexVal.hasMatch(this, RegexPattern.nipPoland);

  bool isSsnPoland() => RegexVal.hasMatch(this, RegexPattern.ssnPoland);

  bool isHealthInsurancePoland() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsurancePoland);

  bool isBankAccountNumberPoland() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberPoland);

  bool isVehicleRegNumberPoland() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberPoland);

  bool isStudentIdPoland() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdPoland);

  bool isWorkPermitPoland() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitPoland);

// **Canada**
  bool isSinCanada() => RegexVal.hasMatch(this, RegexPattern.sinCanada);

  bool isPassportNumberCanada() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberCanada);

  bool isDrivingLicenseNumberCanada() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberCanada);

  bool isTinCanada() => RegexVal.hasMatch(this, RegexPattern.tinCanada);

  bool isHealthInsuranceCanada() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceCanada);

  bool isBankAccountNumberCanada() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberCanada);

  bool isVehicleRegNumberCanada() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberCanada);

  bool isStudentIdCanada() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdCanada);

  bool isWorkPermitCanada() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitCanada);

// **Morocco**
  bool isCinMorocco() => RegexVal.hasMatch(this, RegexPattern.cinMorocco);

  bool isPassportNumberMorocco() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberMorocco);

  bool isDrivingLicenseNumberMorocco() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberMorocco);

  bool isNifMorocco() => RegexVal.hasMatch(this, RegexPattern.nifMorocco);

  bool isSsnMorocco() => RegexVal.hasMatch(this, RegexPattern.ssnMorocco);

  bool isHealthInsuranceMorocco() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceMorocco);

  bool isBankAccountNumberMorocco() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberMorocco);

  bool isVehicleRegNumberMorocco() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberMorocco);

  bool isStudentIdMorocco() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdMorocco);

  bool isWorkPermitMorocco() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitMorocco);

// **Saudi Arabia**
  bool isIdNumberSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.idNumberSaudiArabia);

  bool isPassportNumberSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSaudiArabia);

  bool isDrivingLicenseNumberSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSaudiArabia);

  bool isTinSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.tinSaudiArabia);

  bool isSsnSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.ssnSaudiArabia);

  bool isHealthInsuranceSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSaudiArabia);

  bool isBankAccountNumberSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSaudiArabia);

  bool isVehicleRegNumberSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSaudiArabia);

  bool isStudentIdSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSaudiArabia);

  bool isWorkPermitSaudiArabia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSaudiArabia);

// **Uzbekistan**
  bool isInnUzbekistan() => RegexVal.hasMatch(this, RegexPattern.innUzbekistan);

  bool isPassportNumberUzbekistan() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberUzbekistan);

  bool isDrivingLicenseNumberUzbekistan() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberUzbekistan);

  bool isTinUzbekistan() => RegexVal.hasMatch(this, RegexPattern.tinUzbekistan);

  bool isSsnUzbekistan() => RegexVal.hasMatch(this, RegexPattern.ssnUzbekistan);

  bool isHealthInsuranceUzbekistan() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceUzbekistan);

  bool isBankAccountNumberUzbekistan() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberUzbekistan);

  bool isVehicleRegNumberUzbekistan() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberUzbekistan);

  bool isStudentIdUzbekistan() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdUzbekistan);

  bool isWorkPermitUzbekistan() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitUzbekistan);

// **Peru**
  bool isDniPeru() => RegexVal.hasMatch(this, RegexPattern.dniPeru);

  bool isPassportNumberPeru() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberPeru);

  bool isDrivingLicenseNumberPeru() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberPeru);

  bool isRucPeru() => RegexVal.hasMatch(this, RegexPattern.rucPeru);

  bool isSsnPeru() => RegexVal.hasMatch(this, RegexPattern.ssnPeru);

  bool isHealthInsurancePeru() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsurancePeru);

  bool isBankAccountNumberPeru() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberPeru);

  bool isVehicleRegNumberPeru() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberPeru);

  bool isStudentIdPeru() => RegexVal.hasMatch(this, RegexPattern.studentIdPeru);

  bool isWorkPermitPeru() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitPeru);

// **Malaysia**
  bool isMykadMalaysia() => RegexVal.hasMatch(this, RegexPattern.mykadMalaysia);

  bool isPassportNumberMalaysia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberMalaysia);

  bool isDrivingLicenseNumberMalaysia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberMalaysia);

  bool isTinMalaysia() => RegexVal.hasMatch(this, RegexPattern.tinMalaysia);

  bool isSsnMalaysia() => RegexVal.hasMatch(this, RegexPattern.ssnMalaysia);

  bool isHealthInsuranceMalaysia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceMalaysia);

  bool isBankAccountNumberMalaysia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberMalaysia);

  bool isVehicleRegNumberMalaysia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberMalaysia);

  bool isStudentIdMalaysia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdMalaysia);

  bool isWorkPermitMalaysia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitMalaysia);

// **Angola**
  bool isNationalIdAngola() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdAngola);

  bool isPassportNumberAngola() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberAngola);

  bool isDrivingLicenseNumberAngola() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberAngola);

  bool isNifAngola() => RegexVal.hasMatch(this, RegexPattern.nifAngola);

  bool isSsnAngola() => RegexVal.hasMatch(this, RegexPattern.ssnAngola);

  bool isHealthInsuranceAngola() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceAngola);

  bool isBankAccountNumberAngola() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberAngola);

  bool isVehicleRegNumberAngola() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberAngola);

  bool isStudentIdAngola() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdAngola);

  bool isWorkPermitAngola() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitAngola);

// **Mozambique**
  bool isBiMozambique() => RegexVal.hasMatch(this, RegexPattern.biMozambique);

  bool isPassportNumberMozambique() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberMozambique);

  bool isDrivingLicenseNumberMozambique() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberMozambique);

  bool isNuitMozambique() =>
      RegexVal.hasMatch(this, RegexPattern.nuitMozambique);

  bool isSsnMozambique() => RegexVal.hasMatch(this, RegexPattern.ssnMozambique);

  bool isHealthInsuranceMozambique() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceMozambique);

  bool isBankAccountNumberMozambique() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberMozambique);

  bool isVehicleRegNumberMozambique() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberMozambique);

  bool isStudentIdMozambique() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdMozambique);

  bool isWorkPermitMozambique() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitMozambique);

// **Ghana**
  bool isNationalIdGhana() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdGhana);

  bool isPassportNumberGhana() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberGhana);

  bool isDrivingLicenseNumberGhana() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberGhana);

  bool isTinGhana() => RegexVal.hasMatch(this, RegexPattern.tinGhana);

  bool isSsnGhana() => RegexVal.hasMatch(this, RegexPattern.ssnGhana);

  bool isHealthInsuranceGhana() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceGhana);

  bool isBankAccountNumberGhana() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberGhana);

  bool isVehicleRegNumberGhana() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberGhana);

  bool isStudentIdGhana() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdGhana);

  bool isWorkPermitGhana() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitGhana);

// **Yemen**
  bool isNationalIdYemen() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdYemen);

  bool isPassportNumberYemen() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberYemen);

  bool isDrivingLicenseNumberYemen() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberYemen);

  bool isTinYemen() => RegexVal.hasMatch(this, RegexPattern.tinYemen);

  bool isSsnYemen() => RegexVal.hasMatch(this, RegexPattern.ssnYemen);

  bool isHealthInsuranceYemen() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceYemen);

  bool isBankAccountNumberYemen() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberYemen);

  bool isVehicleRegNumberYemen() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberYemen);

  bool isStudentIdYemen() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdYemen);

  bool isWorkPermitYemen() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitYemen);

// **Nepal**
  bool isCitizenshipNumberNepal() =>
      RegexVal.hasMatch(this, RegexPattern.citizenshipNumberNepal);

  bool isPassportNumberNepal() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberNepal);

  bool isDrivingLicenseNumberNepal() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberNepal);

  bool isPanNepal() => RegexVal.hasMatch(this, RegexPattern.panNepal);

  bool isSsnNepal() => RegexVal.hasMatch(this, RegexPattern.ssnNepal);

  bool isHealthInsuranceNepal() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceNepal);

  bool isBankAccountNumberNepal() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberNepal);

  bool isVehicleRegNumberNepal() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberNepal);

  bool isStudentIdNepal() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdNepal);

  bool isWorkPermitNepal() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitNepal);

// **Venezuela**
  bool isCedulaVenezuela() =>
      RegexVal.hasMatch(this, RegexPattern.cedulaVenezuela);

  bool isPassportNumberVenezuela() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberVenezuela);

  bool isDrivingLicenseNumberVenezuela() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberVenezuela);

  bool isRifVenezuela() => RegexVal.hasMatch(this, RegexPattern.rifVenezuela);

  bool isSsnVenezuela() => RegexVal.hasMatch(this, RegexPattern.ssnVenezuela);

  bool isHealthInsuranceVenezuela() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceVenezuela);

  bool isBankAccountNumberVenezuela() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberVenezuela);

  bool isVehicleRegNumberVenezuela() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberVenezuela);

  bool isStudentIdVenezuela() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdVenezuela);

  bool isWorkPermitVenezuela() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitVenezuela);

// **Australia**
  bool isTfnAustralia() => RegexVal.hasMatch(this, RegexPattern.tfnAustralia);

  bool isPassportNumberAustralia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberAustralia);

  bool isDrivingLicenseNumberAustralia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberAustralia);

  bool isAbnAustralia() =>
      RegexVal.hasMatch(this, RegexPattern.medicareNumberAustralia);

  bool isSsnAustralia() => RegexVal.hasMatch(this, RegexPattern.ssnAustralia);

  bool isHealthInsuranceAustralia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceAustralia);

  bool isBankAccountNumberAustralia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberAustralia);

  bool isVehicleRegNumberAustralia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberAustralia);

  bool isStudentIdAustralia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdAustralia);

  bool isWorkPermitAustralia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitAustralia);

// **Netherlands**
  bool isBsnNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.bsnNetherlands);

  bool isPassportNumberNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberNetherlands);

  bool isDrivingLicenseNumberNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberNetherlands);

  bool isBtwNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.tinNetherlands);

  bool isSsnNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.ssnNetherlands);

  bool isHealthInsuranceNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceNetherlands);

  bool isBankAccountNumberNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberNetherlands);

  bool isVehicleRegNumberNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberNetherlands);

  bool isStudentIdNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdNetherlands);

  bool isWorkPermitNetherlands() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitNetherlands);

// **Belgium**
  bool isRijksregisternummerBelgium() =>
      RegexVal.hasMatch(this, RegexPattern.rijksregisternummerBelgium);

  bool isPassportNumberBelgium() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberBelgium);

  bool isDrivingLicenseNumberBelgium() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberBelgium);

  bool isBtwBelgium() => RegexVal.hasMatch(this, RegexPattern.tinBelgium);

  bool isSsnBelgium() => RegexVal.hasMatch(this, RegexPattern.ssnBelgium);

  bool isHealthInsuranceBelgium() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceBelgium);

  bool isBankAccountNumberBelgium() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberBelgium);

  bool isVehicleRegNumberBelgium() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberBelgium);

  bool isStudentIdBelgium() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdBelgium);

  bool isWorkPermitBelgium() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitBelgium);

// **Sweden**
  bool isPersonalNumberSweden() =>
      RegexVal.hasMatch(this, RegexPattern.personnummerSweden);

  bool isPassportNumberSweden() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSweden);

  bool isDrivingLicenseNumberSweden() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSweden);

  bool isVatSweden() => RegexVal.hasMatch(this, RegexPattern.tinSweden);

  bool isSsnSweden() => RegexVal.hasMatch(this, RegexPattern.ssnSweden);

  bool isHealthInsuranceSweden() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSweden);

  bool isBankAccountNumberSweden() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSweden);

  bool isVehicleRegNumberSweden() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSweden);

  bool isStudentIdSweden() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSweden);

  bool isWorkPermitSweden() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSweden);

// **Switzerland**
  bool isAhvNumberSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.ahvNumberSwitzerland);

  bool isPassportNumberSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSwitzerland);

  bool isDrivingLicenseNumberSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSwitzerland);

  bool isTinSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.tinSwitzerland);

  bool isHealthInsuranceSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSwitzerland);

  bool isBankAccountNumberSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSwitzerland);

  bool isVehicleRegNumberSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSwitzerland);

  bool isStudentIdSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSwitzerland);

  bool isWorkPermitSwitzerland() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSwitzerland);

// **Portugal**
  bool isCitizenCardNumberPortugal() =>
      RegexVal.hasMatch(this, RegexPattern.citizenCardNumberPortugal);

  bool isPassportNumberPortugal() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberPortugal);

  bool isDrivingLicenseNumberPortugal() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberPortugal);

  bool isNifPortugal() => RegexVal.hasMatch(this, RegexPattern.nifPortugal);

  bool isSsnPortugal() => RegexVal.hasMatch(this, RegexPattern.ssnPortugal);

  bool isHealthInsurancePortugal() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsurancePortugal);

  bool isBankAccountNumberPortugal() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberPortugal);

  bool isVehicleRegNumberPortugal() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberPortugal);

  bool isStudentIdPortugal() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdPortugal);

  bool isWorkPermitPortugal() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitPortugal);

// **Austria**
  bool isSocialSecurityNumberAustria() =>
      RegexVal.hasMatch(this, RegexPattern.socialSecurityNumberAustria);

  bool isPassportNumberAustria() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberAustria);

  bool isDrivingLicenseNumberAustria() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberAustria);

  bool isTinAustria() => RegexVal.hasMatch(this, RegexPattern.tinAustria);

  bool isHealthInsuranceAustria() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceAustria);

  bool isBankAccountNumberAustria() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberAustria);

  bool isVehicleRegNumberAustria() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberAustria);

  bool isStudentIdAustria() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdAustria);

  bool isWorkPermitAustria() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitAustria);

// **Israel**
  bool isIdentityCardNumberIsrael() =>
      RegexVal.hasMatch(this, RegexPattern.identityCardNumberIsrael);

  bool isPassportNumberIsrael() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberIsrael);

  bool isDrivingLicenseNumberIsrael() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberIsrael);

  bool isTinIsrael() => RegexVal.hasMatch(this, RegexPattern.tinIsrael);

  bool isSsnIsrael() => RegexVal.hasMatch(this, RegexPattern.ssnIsrael);

  bool isHealthInsuranceIsrael() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceIsrael);

  bool isBankAccountNumberIsrael() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberIsrael);

  bool isVehicleRegNumberIsrael() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberIsrael);

  bool isStudentIdIsrael() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdIsrael);

  bool isWorkPermitIsrael() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitIsrael);

//  **Norway**
  bool isNationalIdentityNumberNorway() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdentityNumberNorway);

  bool isPassportNumberNorway() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberNorway);

  bool isDrivingLicenseNumberNorway() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberNorway);

  bool isTinNorway() => RegexVal.hasMatch(this, RegexPattern.tinNorway);

  bool isSsnNorway() => RegexVal.hasMatch(this, RegexPattern.ssnNorway);

  bool isHealthInsuranceNorway() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceNorway);

  bool isBankAccountNumberNorway() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberNorway);

  bool isVehicleRegNumberNorway() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberNorway);

  bool isStudentIdNorway() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdNorway);

  bool isWorkPermitNorway() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitNorway);

  /// **Ireland**
  bool isPpsNumberIreland() =>
      RegexVal.hasMatch(this, RegexPattern.ppsNumberIreland);

  bool isPassportNumberIreland() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberIreland);

  bool isDrivingLicenseNumberIreland() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberIreland);

  bool isTinIreland() => RegexVal.hasMatch(this, RegexPattern.tinIreland);

  bool isSsnIreland() => RegexVal.hasMatch(this, RegexPattern.ssnIreland);

  bool isHealthInsuranceIreland() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceIreland);

  bool isBankAccountNumberIreland() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberIreland);

  bool isVehicleRegNumberIreland() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberIreland);

  bool isStudentIdIreland() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdIreland);

  bool isWorkPermitIreland() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitIreland);

  // **Denmark**
  bool isCprNumberDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.cprNumberDenmark);

  bool isPassportNumberDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberDenmark);

  bool isDrivingLicenseNumberDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberDenmark);

  bool isCvrNumberDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.cvrNumberDenmark);

  bool isSsnDenmark() => RegexVal.hasMatch(this, RegexPattern.ssnDenmark);

  bool isHealthInsuranceDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceDenmark);

  bool isBankAccountNumberDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberDenmark);

  bool isVehicleRegNumberDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberDenmark);

  bool isStudentIdDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdDenmark);

  bool isWorkPermitDenmark() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitDenmark);

  // **Singapore**
  bool isNricNumberSingapore() =>
      RegexVal.hasMatch(this, RegexPattern.nricNumberSingapore);

  bool isPassportNumberSingapore() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSingapore);

  bool isDrivingLicenseNumberSingapore() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSingapore);

  bool isTinSingapore() => RegexVal.hasMatch(this, RegexPattern.tinSingapore);

  bool isSsnSingapore() => RegexVal.hasMatch(this, RegexPattern.ssnSingapore);

  bool isHealthInsuranceSingapore() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSingapore);

  bool isBankAccountNumberSingapore() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSingapore);

  bool isVehicleRegNumberSingapore() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSingapore);

  bool isStudentIdSingapore() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSingapore);

  bool isWorkPermitSingapore() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSingapore);

  // **Finland**
  bool isPersonalIdentityCodeFinland() =>
      RegexVal.hasMatch(this, RegexPattern.personalIdentityCodeFinland);

  bool isPassportNumberFinland() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberFinland);

  bool isDrivingLicenseNumberFinland() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberFinland);

  bool isTinFinland() => RegexVal.hasMatch(this, RegexPattern.tinFinland);

  bool isSsnFinland() => RegexVal.hasMatch(this, RegexPattern.ssnFinland);

  bool isHealthInsuranceFinland() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceFinland);

  bool isBankAccountNumberFinland() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberFinland);

  bool isVehicleRegNumberFinland() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberFinland);

  bool isStudentIdFinland() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdFinland);

  bool isWorkPermitFinland() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitFinland);

  // **Dominican Republic**
  bool isCedulaDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.cedulaDominicanRepublic);

  bool isPassportNumberDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberDominicanRepublic);

  bool isDrivingLicenseNumberDominicanRepublic() => RegexVal.hasMatch(
      this, RegexPattern.drivingLicenseNumberDominicanRepublic);

  bool isRncDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.rncDominicanRepublic);

  bool isSsnDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.ssnDominicanRepublic);

  bool isHealthInsuranceDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceDominicanRepublic);

  bool isBankAccountNumberDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberDominicanRepublic);

  bool isVehicleRegNumberDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberDominicanRepublic);

  bool isStudentIdDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdDominicanRepublic);

  bool isWorkPermitDominicanRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitDominicanRepublic);

  // **Czech Republic**
  bool isBirthNumberCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.birthNumberCzechRepublic);

  bool isPassportNumberCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberCzechRepublic);

  bool isDrivingLicenseNumberCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberCzechRepublic);

  bool isTinCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.tinCzechRepublic);

  bool isSsnCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.ssnCzechRepublic);

  bool isHealthInsuranceCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceCzechRepublic);

  bool isBankAccountNumberCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberCzechRepublic);

  bool isVehicleRegNumberCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberCzechRepublic);

  bool isStudentIdCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdCzechRepublic);

  bool isWorkPermitCzechRepublic() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitCzechRepublic);

// **Greece**
  bool isAfmGreece() => RegexVal.hasMatch(this, RegexPattern.afmGreece);

  bool isPassportNumberGreece() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberGreece);

  bool isDrivingLicenseNumberGreece() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberGreece);

  bool isSsnGreece() => RegexVal.hasMatch(this, RegexPattern.ssnGreece);

  bool isHealthInsuranceGreece() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceGreece);

  bool isBankAccountNumberGreece() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberGreece);

  bool isVehicleRegNumberGreece() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberGreece);

  bool isStudentIdGreece() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdGreece);

  bool isWorkPermitGreece() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitGreece);

// **New Zealand**
  bool isIrdNumberNewZealand() =>
      RegexVal.hasMatch(this, RegexPattern.irdNumberNewZealand);

  bool isPassportNumberNewZealand() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberNewZealand);

  bool isDrivingLicenseNumberNewZealand() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberNewZealand);

  bool isTinNewZealand() => RegexVal.hasMatch(this, RegexPattern.tinNewZealand);

  bool isSsnNewZealand() => RegexVal.hasMatch(this, RegexPattern.ssnNewZealand);

  bool isHealthInsuranceNewZealand() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceNewZealand);

  bool isBankAccountNumberNewZealand() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberNewZealand);

  bool isVehicleRegNumberNewZealand() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberNewZealand);

  bool isStudentIdNewZealand() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdNewZealand);

  bool isWorkPermitNewZealand() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitNewZealand);

// **Slovakia**
  bool isBirthNumberSlovakia() =>
      RegexVal.hasMatch(this, RegexPattern.birthNumberSlovakia);

  bool isPassportNumberSlovakia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSlovakia);

  bool isDrivingLicenseNumberSlovakia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSlovakia);

  bool isTinSlovakia() => RegexVal.hasMatch(this, RegexPattern.tinSlovakia);

  bool isSsnSlovakia() => RegexVal.hasMatch(this, RegexPattern.ssnSlovakia);

  bool isHealthInsuranceSlovakia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSlovakia);

  bool isBankAccountNumberSlovakia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSlovakia);

  bool isVehicleRegNumberSlovakia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSlovakia);

  bool isStudentIdSlovakia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSlovakia);

  bool isWorkPermitSlovakia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSlovakia);

// **Costa Rica**
  bool isCedulaCostaRica() =>
      RegexVal.hasMatch(this, RegexPattern.cedulaCostaRica);

  bool isPassportNumberCostaRica() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberCostaRica);

  bool isDrivingLicenseNumberCostaRica() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberCostaRica);

  bool isTinCostaRica() => RegexVal.hasMatch(this, RegexPattern.tinCostaRica);

  bool isSsnCostaRica() => RegexVal.hasMatch(this, RegexPattern.ssnCostaRica);

  bool isHealthInsuranceCostaRica() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceCostaRica);

  bool isBankAccountNumberCostaRica() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberCostaRica);

  bool isVehicleRegNumberCostaRica() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberCostaRica);

  bool isStudentIdCostaRica() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdCostaRica);

  bool isWorkPermitCostaRica() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitCostaRica);

// **Kuwait**
  bool isCivilIdKuwait() => RegexVal.hasMatch(this, RegexPattern.civilIdKuwait);

  bool isPassportNumberKuwait() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberKuwait);

  bool isDrivingLicenseNumberKuwait() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberKuwait);

  bool isTinKuwait() => RegexVal.hasMatch(this, RegexPattern.tinKuwait);

  bool isSsnKuwait() => RegexVal.hasMatch(this, RegexPattern.ssnKuwait);

  bool isHealthInsuranceKuwait() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceKuwait);

  bool isBankAccountNumberKuwait() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberKuwait);

  bool isVehicleRegNumberKuwait() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberKuwait);

  bool isStudentIdKuwait() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdKuwait);

  bool isWorkPermitKuwait() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitKuwait);

  // **Panama**
  bool isCedulaPanama() => RegexVal.hasMatch(this, RegexPattern.cedulaPanama);

  bool isPassportNumberPanama() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberPanama);

  bool isDrivingLicenseNumberPanama() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberPanama);

  bool isRucPanama() => RegexVal.hasMatch(this, RegexPattern.rucPanama);

  bool isSsnPanama() => RegexVal.hasMatch(this, RegexPattern.ssnPanama);

  bool isHealthInsurancePanama() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsurancePanama);

  bool isBankAccountNumberPanama() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberPanama);

  bool isVehicleRegNumberPanama() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberPanama);

  bool isStudentIdPanama() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdPanama);

  bool isWorkPermitPanama() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitPanama);

// **Croatia**
  bool isOibCroatia() => RegexVal.hasMatch(this, RegexPattern.oibCroatia);

  bool isPassportNumberCroatia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberCroatia);

  bool isDrivingLicenseNumberCroatia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberCroatia);

  bool isPdvIdCroatia() => RegexVal.hasMatch(this, RegexPattern.pdvIdCroatia);

  bool isSsnCroatia() => RegexVal.hasMatch(this, RegexPattern.ssnCroatia);

  bool isHealthInsuranceCroatia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceCroatia);

  bool isBankAccountNumberCroatia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberCroatia);

  bool isVehicleRegNumberCroatia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberCroatia);

  bool isStudentIdCroatia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdCroatia);

  bool isWorkPermitCroatia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitCroatia);

// **Lebanon**
  bool isNationalIdLebanon() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdLebanon);

  bool isPassportNumberLebanon() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberLebanon);

  bool isDrivingLicenseNumberLebanon() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberLebanon);

  bool isTinLebanon() => RegexVal.hasMatch(this, RegexPattern.tinLebanon);

  bool isSsnLebanon() => RegexVal.hasMatch(this, RegexPattern.ssnLebanon);

  bool isHealthInsuranceLebanon() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceLebanon);

  bool isBankAccountNumberLebanon() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberLebanon);

  bool isVehicleRegNumberLebanon() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberLebanon);

  bool isStudentIdLebanon() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdLebanon);

  bool isWorkPermitLebanon() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitLebanon);

// **Uruguay**
  bool isCedulaUruguay() => RegexVal.hasMatch(this, RegexPattern.cedulaUruguay);

  bool isPassportNumberUruguay() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberUruguay);

  bool isDrivingLicenseNumberUruguay() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberUruguay);

  bool isRutUruguay() => RegexVal.hasMatch(this, RegexPattern.rutUruguay);

  bool isSsnUruguay() => RegexVal.hasMatch(this, RegexPattern.ssnUruguay);

  bool isHealthInsuranceUruguay() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceUruguay);

  bool isBankAccountNumberUruguay() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberUruguay);

  bool isVehicleRegNumberUruguay() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberUruguay);

  bool isStudentIdUruguay() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdUruguay);

  bool isWorkPermitUruguay() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitUruguay);

// **Lithuania**
  bool isPersonalCodeLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.personalCodeLithuania);

  bool isPassportNumberLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberLithuania);

  bool isDrivingLicenseNumberLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberLithuania);

  bool isPvmKodasLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.pvmKodasLithuania);

  bool isSsnLithuania() => RegexVal.hasMatch(this, RegexPattern.ssnLithuania);

  bool isHealthInsuranceLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceLithuania);

  bool isBankAccountNumberLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberLithuania);

  bool isVehicleRegNumberLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberLithuania);

  bool isStudentIdLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdLithuania);

  bool isWorkPermitLithuania() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitLithuania);

// **Oman**
  bool isNationalIdOman() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdOman);

  bool isPassportNumberOman() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberOman);

  bool isDrivingLicenseNumberOman() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberOman);

  bool isTinOman() => RegexVal.hasMatch(this, RegexPattern.tinOman);

  bool isSsnOman() => RegexVal.hasMatch(this, RegexPattern.ssnOman);

  bool isHealthInsuranceOman() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceOman);

  bool isBankAccountNumberOman() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberOman);

  bool isVehicleRegNumberOman() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberOman);

  bool isStudentIdOman() => RegexVal.hasMatch(this, RegexPattern.studentIdOman);

  bool isWorkPermitOman() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitOman);

// **Bosnia and Herzegovina**
  bool isJmbgBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.jmbgBosniaHerzegovina);

  bool isPassportNumberBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberBosniaHerzegovina);

  bool isDrivingLicenseNumberBosniaHerzegovina() => RegexVal.hasMatch(
      this, RegexPattern.drivingLicenseNumberBosniaHerzegovina);

  bool isPibBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.pibBosniaHerzegovina);

  bool isSsnBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.ssnBosniaHerzegovina);

  bool isHealthInsuranceBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceBosniaHerzegovina);

  bool isBankAccountNumberBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberBosniaHerzegovina);

  bool isVehicleRegNumberBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberBosniaHerzegovina);

  bool isStudentIdBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdBosniaHerzegovina);

  bool isWorkPermitBosniaHerzegovina() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitBosniaHerzegovina);

// **Mongolia**
  bool isNricNumberMongolia() =>
      RegexVal.hasMatch(this, RegexPattern.nricNumberMongolia);

  bool isPassportNumberMongolia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberMongolia);

  bool isDrivingLicenseNumberMongolia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberMongolia);

  bool isTinMongolia() => RegexVal.hasMatch(this, RegexPattern.tinMongolia);

  bool isSsnMongolia() => RegexVal.hasMatch(this, RegexPattern.ssnMongolia);

  bool isHealthInsuranceMongolia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceMongolia);

  bool isBankAccountNumberMongolia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberMongolia);

  bool isVehicleRegNumberMongolia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberMongolia);

  bool isStudentIdMongolia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdMongolia);

  bool isWorkPermitMongolia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitMongolia);

// **Jamaica**
  bool isTrnJamaica() => RegexVal.hasMatch(this, RegexPattern.trnJamaica);

  bool isPassportNumberJamaica() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberJamaica);

  bool isDrivingLicenseNumberJamaica() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberJamaica);

  bool isNationalInsuranceNumberJamaica() =>
      RegexVal.hasMatch(this, RegexPattern.nationalInsuranceNumberJamaica);

  bool isSsnJamaica() => RegexVal.hasMatch(this, RegexPattern.ssnJamaica);

  bool isHealthInsuranceJamaica() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceJamaica);

  bool isBankAccountNumberJamaica() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberJamaica);

  bool isVehicleRegNumberJamaica() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberJamaica);

  bool isStudentIdJamaica() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdJamaica);

  bool isWorkPermitJamaica() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitJamaica);

// **Latvia**
  bool isPersonalCodeLatvia() =>
      RegexVal.hasMatch(this, RegexPattern.personalCodeLatvia);

  bool isPassportNumberLatvia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberLatvia);

  bool isDrivingLicenseNumberLatvia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberLatvia);

  bool isPvnIdLatvia() => RegexVal.hasMatch(this, RegexPattern.pvnIdLatvia);

  bool isSsnLatvia() => RegexVal.hasMatch(this, RegexPattern.ssnLatvia);

  bool isHealthInsuranceLatvia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceLatvia);

  bool isBankAccountNumberLatvia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberLatvia);

  bool isVehicleRegNumberLatvia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberLatvia);

  bool isStudentIdLatvia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdLatvia);

  bool isWorkPermitLatvia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitLatvia);

// **Namibia**
  bool isIdNumberNamibia() =>
      RegexVal.hasMatch(this, RegexPattern.idNumberNamibia);

  bool isPassportNumberNamibia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberNamibia);

  bool isDrivingLicenseNumberNamibia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberNamibia);

  bool isTinNamibia() => RegexVal.hasMatch(this, RegexPattern.tinNamibia);

  bool isSsnNamibia() => RegexVal.hasMatch(this, RegexPattern.ssnNamibia);

  bool isHealthInsuranceNamibia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceNamibia);

  bool isBankAccountNumberNamibia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberNamibia);

  bool isVehicleRegNumberNamibia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberNamibia);

  bool isStudentIdNamibia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdNamibia);

  bool isWorkPermitNamibia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitNamibia);

// **Botswana**
  bool isOmangBotswana() => RegexVal.hasMatch(this, RegexPattern.omangBotswana);

  bool isPassportNumberBotswana() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberBotswana);

  bool isDrivingLicenseNumberBotswana() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberBotswana);

  bool isTinBotswana() => RegexVal.hasMatch(this, RegexPattern.tinBotswana);

  bool isSsnBotswana() => RegexVal.hasMatch(this, RegexPattern.ssnBotswana);

  bool isHealthInsuranceBotswana() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceBotswana);

  bool isBankAccountNumberBotswana() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberBotswana);

  bool isVehicleRegNumberBotswana() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberBotswana);

  bool isStudentIdBotswana() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdBotswana);

  bool isWorkPermitBotswana() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitBotswana);

// **Qatar**
  bool isQidQatar() => RegexVal.hasMatch(this, RegexPattern.qidQatar);

  bool isPassportNumberQatar() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberQatar);

  bool isDrivingLicenseNumberQatar() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberQatar);

  bool isTinQatar() => RegexVal.hasMatch(this, RegexPattern.tinQatar);

  bool isSsnQatar() => RegexVal.hasMatch(this, RegexPattern.ssnQatar);

  bool isHealthInsuranceQatar() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceQatar);

  bool isBankAccountNumberQatar() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberQatar);

  bool isVehicleRegNumberQatar() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberQatar);

  bool isStudentIdQatar() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdQatar);

  bool isWorkPermitQatar() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitQatar);

// **Slovenia**
  bool isEmsoSlovenia() => RegexVal.hasMatch(this, RegexPattern.emsoSlovenia);

  bool isPassportNumberSlovenia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberSlovenia);

  bool isDrivingLicenseNumberSlovenia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberSlovenia);

  bool isTinSlovenia() => RegexVal.hasMatch(this, RegexPattern.tinSlovenia);

  bool isSsnSlovenia() => RegexVal.hasMatch(this, RegexPattern.ssnSlovenia);

  bool isHealthInsuranceSlovenia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceSlovenia);

  bool isBankAccountNumberSlovenia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberSlovenia);

  bool isVehicleRegNumberSlovenia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberSlovenia);

  bool isStudentIdSlovenia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdSlovenia);

  bool isWorkPermitSlovenia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitSlovenia);

// **The Gambia**
  bool isNationalIdGambia() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdGambia);

  bool isPassportNumberGambia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberGambia);

  bool isDrivingLicenseNumberGambia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberGambia);

  bool isTinGambia() => RegexVal.hasMatch(this, RegexPattern.tinGambia);

  bool isSsnGambia() => RegexVal.hasMatch(this, RegexPattern.ssnGambia);

  bool isHealthInsuranceGambia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceGambia);

  bool isBankAccountNumberGambia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberGambia);

  bool isVehicleRegNumberGambia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberGambia);

  bool isStudentIdGambia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdGambia);

  bool isWorkPermitGambia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitGambia);

// **Macedonia**
  bool isEmbMacedonia() => RegexVal.hasMatch(this, RegexPattern.embMacedonia);

  bool isPassportNumberMacedonia() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberMacedonia);

  bool isDrivingLicenseNumberMacedonia() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberMacedonia);

  bool isTinMacedonia() => RegexVal.hasMatch(this, RegexPattern.tinMacedonia);

  bool isSsnMacedonia() => RegexVal.hasMatch(this, RegexPattern.ssnMacedonia);

  bool isHealthInsuranceMacedonia() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceMacedonia);

  bool isBankAccountNumberMacedonia() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberMacedonia);

  bool isVehicleRegNumberMacedonia() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberMacedonia);

  bool isStudentIdMacedonia() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdMacedonia);

  bool isWorkPermitMacedonia() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitMacedonia);

  // **Guinea-Bissau**
  bool isIdNumberGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.idNumberGuineaBissau);

  bool isPassportNumberGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberGuineaBissau);

  bool isDrivingLicenseNumberGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberGuineaBissau);

  bool isTinGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.tinGuineaBissau);

  bool isSsnGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.ssnGuineaBissau);

  bool isHealthInsuranceGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceGuineaBissau);

  bool isBankAccountNumberGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberGuineaBissau);

  bool isVehicleRegNumberGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberGuineaBissau);

  bool isStudentIdGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdGuineaBissau);

  bool isWorkPermitGuineaBissau() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitGuineaBissau);

// **Gabon**
  bool isNationalIdGabon() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdGabon);

  bool isPassportNumberGabon() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberGabon);

  bool isDrivingLicenseNumberGabon() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberGabon);

  bool isTinGabon() => RegexVal.hasMatch(this, RegexPattern.tinGabon);

  bool isSsnGabon() => RegexVal.hasMatch(this, RegexPattern.ssnGabon);

  bool isHealthInsuranceGabon() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceGabon);

  bool isBankAccountNumberGabon() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberGabon);

  bool isVehicleRegNumberGabon() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberGabon);

  bool isStudentIdGabon() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdGabon);

  bool isWorkPermitGabon() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitGabon);

// **Bahrain**
  bool isNationalIdBahrain() =>
      RegexVal.hasMatch(this, RegexPattern.nationalIdBahrain);

  bool isPassportNumberBahrain() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberBahrain);

  bool isDrivingLicenseNumberBahrain() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberBahrain);

  bool isTinBahrain() => RegexVal.hasMatch(this, RegexPattern.tinBahrain);

  bool isSsnBahrain() => RegexVal.hasMatch(this, RegexPattern.ssnBahrain);

  bool isHealthInsuranceBahrain() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceBahrain);

  bool isBankAccountNumberBahrain() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberBahrain);

  bool isVehicleRegNumberBahrain() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberBahrain);

  bool isStudentIdBahrain() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdBahrain);

  bool isWorkPermitBahrain() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitBahrain);

// **Bhutan**
  bool isCidBhutan() => RegexVal.hasMatch(this, RegexPattern.cidBhutan);

  bool isPassportNumberBhutan() =>
      RegexVal.hasMatch(this, RegexPattern.passportNumberBhutan);

  bool isDrivingLicenseNumberBhutan() =>
      RegexVal.hasMatch(this, RegexPattern.drivingLicenseNumberBhutan);

  bool isTinBhutan() => RegexVal.hasMatch(this, RegexPattern.tinBhutan);

  bool isSsnBhutan() => RegexVal.hasMatch(this, RegexPattern.ssnBhutan);

  bool isHealthInsuranceBhutan() =>
      RegexVal.hasMatch(this, RegexPattern.healthInsuranceBhutan);

  bool isBankAccountNumberBhutan() =>
      RegexVal.hasMatch(this, RegexPattern.bankAccountNumberBhutan);

  bool isVehicleRegNumberBhutan() =>
      RegexVal.hasMatch(this, RegexPattern.vehicleRegNumberBhutan);

  bool isStudentIdBhutan() =>
      RegexVal.hasMatch(this, RegexPattern.studentIdBhutan);

  bool isWorkPermitBhutan() =>
      RegexVal.hasMatch(this, RegexPattern.workPermitBhutan);

  // New York Stock Exchange (NYSE):
  bool isNyseRegex() => RegexVal.hasMatch(this, RegexPattern.nyseRegex);

  //NASDAQ stands for the National Association of Securities Dealers Automated Quotations.
  // It is an American stock exchange based in New York City. NASDAQ is known for
  // its electronic trading platform and is home to many technology and biotechnology companies.
  bool isNasdaqRegex() => RegexVal.hasMatch(this, RegexPattern.nasdaqRegex);

  // Tokyo Stock Exchange (TSE):
  bool isTseRegex() => RegexVal.hasMatch(this, RegexPattern.tseRegex);

  // Shanghai Stock Exchange (SSE):
  bool isSseRegex() => RegexVal.hasMatch(this, RegexPattern.sseRegex);

  // Hong Kong Stock Exchange (HKEX):
  bool isHkexRegex() => RegexVal.hasMatch(this, RegexPattern.hkexRegex);

  //Euronext is a pan-European stock exchange based in Amsterdam, Netherlands.
  // It operates stock exchanges in Amsterdam, Brussels, Dublin, Lisbon, Milan, Oslo, and Paris.
  // Euronext is one of the largest stock exchange operators in Europe.
  bool isEuronextRegex() => RegexVal.hasMatch(this, RegexPattern.euronextRegex);

  // London Stock Exchange (LSE):
  bool isLseRegex() => RegexVal.hasMatch(this, RegexPattern.lseRegex);

  // Shenzhen Stock Exchange (SZSE):
  bool isSzseRegex() => RegexVal.hasMatch(this, RegexPattern.szseRegex);

  //The Toronto Stock Exchange (TSX) is Canada's largest stock exchange, located in Toronto, Ontario,
  // and is the ninth largest stock exchange in the world by market capitalization.
  bool isTsxRegex() => RegexVal.hasMatch(this, RegexPattern.tsxRegex);

  //The Bombay Stock Exchange (BSE) is an Indian stock exchange located in Mumbai, Maharashtra,
  // and is the 10th largest stock exchange in the world by market capitalization.
  bool isBseRegex() => RegexVal.hasMatch(this, RegexPattern.bseRegex);
}
