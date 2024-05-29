import 'package:flutter/material.dart';
import 'package:flutter_regex/flutter_regex.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Regex Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Regex Example Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String uri = 'https://google.com';
    String email = 'abc@gmail.com';
    String phoneNumber = '+91 9999999999';
    String currencySymbol = '€';
    String currencyCode = 'EUR';
    String emoji = '😊';
    String creditCard = '1234 5678 9123 4567';

    bool isUriMatch = uri.isUrl(); //true
    bool isEmailMatch = email.isEmail();
    String emailSt = 'user@sub.exämple.com';
    bool isStEmailMatch = emailSt.isEmail(supportTopLevelDomain: true); //true
    bool isPhoneNumberMatch = phoneNumber.isPhone(); //true
    bool isEmojiMatch = emoji.isEmoji(); //true
    bool isCurrencySymbolMatch = currencySymbol.isCurrencySymbolRegex(); //true
    bool isCurrencyCodeMatch = currencyCode.isCurrencyCodePattern(); //true
    bool isCreditCardMatch = creditCard.isCreditCard(); //true

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'is Url - $uri: $isUriMatch',
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'is basic Email check - $email: $isEmailMatch',
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'is Email - $emailSt: $isStEmailMatch',
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'is Phone Number - $phoneNumber: $isPhoneNumberMatch',
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'is Emoji - $emoji: $isEmojiMatch',
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'is Credit Card - $creditCard: $isCreditCardMatch',
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'is Currency Code Match - $currencyCode: $isCurrencyCodeMatch',
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'is Currency Symbol Match - $currencySymbol: $isCurrencySymbolMatch',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
