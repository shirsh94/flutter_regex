# Flutter Regex Plugin

The `flutter_regex` plugin provides comprehensive support for a wide range of regular expression
patterns, including basic data validation for usernames, emails, and passwords, support for over 50
country ID regex patterns, and various other specialized patterns for different data formats.

## Features

- Regex pattern for emojis(😊).
- Support for 50+ country ID regex patterns.
- Supports `usernameV2`, `usernameGoogle`, `usernameInstagram`, and `usernameDiscord` patterns.
- Supports `email` and `url` patterns.
- Supports `webp` format for image patterns.
- Supports `basicDateTime` pattern.
- Supports `dateTimeUTC` and `dateTime` patterns.
- Supports `cvv` and `noWhitespace` patterns.
- Supports `uuid`, `bitcoinAddress`, `bitcoinTaprootAddress`, `bitcoinSegwitAddress`,
  and `ethereumAddress` patterns.
- Supports regex patterns for stock exchanges: NYSE, NASDAQ, TSE, SSE, HKEX, Euronext, LSE, SZSE,
  TSX, BSE.
- Supports regex patterns for UUID, MAC address, credit card number, YouTube video ID, Twitter
  username, Roman numerals, Sudoku puzzles, DNA sequences, time (12-hour and 24-hour format),
  positive and negative integers, decimal and floating-point numbers, base64 encoded string, JWT (
  JSON Web Token), RGB and HSL color codes, SQL statements, ISIN, GPG key ID, MIME types, phone
  numbers (U.S. format), JSON objects and arrays, CSS selectors, octal numbers, scientific notation,
  PHP blocks, Python function declarations, IBAN, IMEI, ISMN, and various postal code formats.
- Supports regex pattern for latitude-longitude coordinates (decimal), Google Analytics tracking ID,
  Google Cloud Storage URI, JDBC connection string, pangram.
- Supports 1000+ famous and commonly used regex patterns.
- **Added support for 110 plus country currency symbols and codes.**
- **Updated email validator which supports the format of an email address.**
- **Added various new regex patterns for matching palindromes, prime numbers, balanced parentheses, Morse code, Fibonacci numbers, SSID names, MAC addresses, WEP keys, WPA keys, network names, signal strength, and WiFi channel numbers.**

## Usage

To use the `flutter_regex` plugin, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_regex: ^0.0.3
```

Then, import the package in your Dart code:

```dart
import 'package:flutter_regex/flutter_regex.dart';
```

You can then use the various regex patterns provided by the plugin to validate your data.

---

Now you are ready to use this plugin, let's see this with the most used 15 examples,

1. Username, Email, Phone Number, or all normal form fields
```dart
String email = 'abc@gmail.com';
String phoneNumber = '+91 9999999999';

bool isEmailMatch = email.isEmail();
bool isPhoneNumberMatch = phoneNumber.isPhone();
```
Also allows top-level domain
```dart
String emailSt = 'user@sub.exämple.com';
bool isStEmailMatch = emailSt.isEmail(supportTopLevelDomain: true); //true
```

2. Password (Simple, Normal, Hard)
```dart
// Simple
String easyPassword = 'abcdefgh';
bool isPasswordMatch = easyPassword.isPasswordEasy();

// Normal
String normalPassword = 'admin123';
bool isPasswordMatch = normalPassword.isPasswordNormal1();

// Hard
String hardPassword = 'Admin123!';
bool isPasswordMatch = hardPassword.isPasswordHard();
```
Also, there are 2–3 more regex for the all-type password and space support option as well.

3. Emoji (😂)
```dart
String emoji = '😂';
bool isEmojiMatch = emoji.isEmoji();
```
All common emojis supported like, 😂 ❤️ 😍 😊 😭 😘 🥺 🤔 💕 😩 ✨ 🎉 🙏 😊 🎶 😁 😔 😎 😬 🤣 🌟 😢 💔 🥰 🌹 💖 🙌 🤗 💙 😅 🎊 🎁 😌 😪 😅 😳 😤 🥴 🙃 🎵 😓 😖 😞 😇 😜 😋 😡

4. Social ID(Google, Twitter, YouTube, Discord, etc.)
```dart
String usernameGoogle = 'Shirsh123';
bool isUsernameGoogleMatch = usernameGoogle.isUsernameGoogle(); // same for Instagram, Discord etc.
```

5. Currencies(dollar 💵, Rupees ₹, euro 💶 and 110 + country) and Crypto Currencies(Bitcoin, Ethereum)
```dart
String currency = '€'; // Support Euro, dollar, rupee, and 110+ country
bool isCurrencyMatch = currency.isCurrencySymbolRegex();
```
Also allows Currency Code Pattern
```dart
String currencyCode = 'EUR';
bool isCurrencyCodeMatch = currencyCode.isCurrencyCodePattern(); //true
```

6. International IDs(ISIN, IBAN, IMEI, ISMN, etc.)
```dart
// ISIN (International Securities Identification Number)
String isin = 'INE0J1Y01017';
bool isISINMatch = isin.ISIN();
```
International Standard Book Number (ISBN)
```dart
String isbn = '978-93-5300-895-6';
bool isISBNMatch = isbn.ISBN();
```
Same as we can check IMEI (International Mobile Equipment Identity) number and ISMN (International Standard Music Number) etc.

7. URL, URI, UUID
```dart
String url = 'http://www.example.com/index.html';
bool isUrlMatch = url.isUrl();

String uri = 'https://google.com';
bool isUriMatch = uri.isUri();

String uuid = '550e8400-e29b-41d4-a716-446655440000';
bool isUuidMatch = uuid.isUUID();
```

8. Date 📅 Time ⏲ with different formats.
```dart
String dateTime = 'Wednesday, 24 June 2023';
bool isDateTimeMatch = dateTime.isDateTime();

String dateTimeUTC = '2021-04-27 03:16:39';
bool isDateTimeUTCMatch = dateTimeUTC.isDateTimeUTC();
```

9. Popular documents types(doc, excel, audio, video, txt, ppt, ipa, apk, pdf, etc.)
```dart
String ppt = 'abc123Slide.ppt';
bool isPPTMatch = ppt.isPPT();
```
Same as for doc, excel, audio, video, txt, ipa, apk, pdf, etc.

10. Security keys (sha 1, sha 256, ssn, ipv4, ipv6, etc.)
```dart
String sha1 = '5e13ae4640ae4ae0e09c05b7bb060f544dabd042';
bool isSHA1Match = sha1.isSHA1();
```
Same as for sha 256,

ssn, ipv4, ipv6, etc.

11. Colors (RGB, HSL, etc.)
```dart
String rgbColor = 'rgb(256, 2, 0)';
bool isRgbColorMatch = rgbColor.isRgbColorCode();

String hslColor = 'hsl(0, 100%, 50%)';
bool isHslColorMatch = hslColor.isHslColorCode();
```

12. JSON(JSON object, JSON array, JWT)
```dart
// JSON object
String jsonObject = '{"name": "John", "age": 30}';
bool isJsonObjectMatch = jsonObject.isJsonObject();

// JSON Array
String jsonArray = '["apple", "banana", "orange"]';
bool isJsonArrayMatch = jsonArray.isJsonArray();

// JSON Web Token
String jwt = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c';
bool isJWTMatch = jwt.isJwt();
```

13. Postal code(USA, Indian, Japanese, German, French, etc.)
```dart
String indianPostalCode = '452006';
bool isIndianPostalCodeMatch = indianPostalCode.isIndianPostalCode();
```
Same as for Japanese, German, French, etc.

14. Government IDs(License, Passport, voters ID and 10 plus)
```dart
String passportNumberIndia = 'AB12345'; // Just an example of Passport Number
bool isPassportNumberIndiaMatch = passportNumberIndia.isPassportNumberIndia();
```
Same as India, United States, China, Japan, Germany, United Kingdom, France, Italy, Canada, South Korea, Russia, Spain, Australia, Brazil, Mexico, Indonesia, Netherlands, Saudi Arabia, Turkey, Switzerland, Taiwan, Sweden, Poland, Belgium, Thailand, Iran, Austria, Norway, United Arab Emirates, Nigeria, Israel, South Africa, Hong Kong, Denmark, Singapore, Malaysia, Philippines, Colombia, Egypt, Finland, Chile, Ireland, Pakistan, Greece, Portugal, Vietnam 50 plus country's top 10 ID supported

15. Credit card (15 &16 digits both also space supports) 💳
```dart
String passportNumber = '4111 1111 1111 1111'; // 16 and 15 digit also space supported
bool isPassportNumberMatch = passportNumber.isCreditCard();
```

For more details, check out the [API documentation](https://pub.dev/documentation/flutter_regex/latest/).

## Getting Started

For help getting started with Flutter, view the online [documentation](https://flutter.dev/docs),
which offers tutorials, samples, guidance on mobile development, and a full API reference.

## License

The MIT License (MIT) Copyright (c) 2024 Shirsh Shukla

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

