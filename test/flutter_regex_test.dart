import 'package:flutter_regex/flutter_regex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check if URI is valid', () {
    // Arrange
    String uri = 'https://www.example.com';

    // Act
    bool isUriMatch = uri.isUrl();

    // Assert
    expect(isUriMatch, true);
  });

  test('Check if email is valid', () {
    // Arrange
    String email = 'test@example.com';

    // Act
    bool isEmailMatch = email.isEmail();

    // Assert
    expect(isEmailMatch, true);
  });

  test('Check if phone number is valid', () {
    // Arrange
    String phoneNumber = '+1234567890';

    // Act
    bool isPhoneNumberMatch = phoneNumber.isPhone();

    // Assert
    expect(isPhoneNumberMatch, true);
  });

  test('Check if emoji is valid', () {
    // Arrange
    String emoji = '😊';

    // Act
    bool isEmojiMatch = emoji.isEmoji();

    // Assert
    expect(isEmojiMatch, true);
  });

  test('Check if credit card is valid', () {
    // Arrange
    String creditCard = '4111111111111111';

    // Act
    bool isCreditCardMatch = creditCard.isCreditCard();

    // Assert
    expect(isCreditCardMatch, true);
  });
}
