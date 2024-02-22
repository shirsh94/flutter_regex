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

## Usage

To use the `flutter_regex` plugin, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_regex: ^0.0.1
```

Then, import the package in your Dart code:

```dart
import 'package:flutter_regex/flutter_regex.dart';
```

You can then use the various regex patterns provided by the plugin to validate your data.

```dart

String text = 'https://shirsh94.medium.com';
bool isUrl = text.isUrl(); // text.is<Pattern>();
```

For more details, check out
the [API documentation](https://pub.dev/documentation/flutter_regex/latest/).

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