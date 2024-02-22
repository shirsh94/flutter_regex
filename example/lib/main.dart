import 'package:flutter/material.dart';
import 'package:flutter_regex/flutter_regex.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Regex Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Regex Example Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String uri = 'https://google.com';
    String email = 'abc@gmail.com';
    String phoneNumber = '+91 9999999999';
    String emoji = '😊';
    String creditCard = '1234 5678 9123 4567';
    bool isUriMatch = uri.isUrl();
    bool isEmailMatch = email.isEmail();
    bool isPhoneNumberMatch = phoneNumber.isPhone();
    bool isEmojiMatch = emoji.isEmoji();
    bool isCreditCardMatch = creditCard.isCreditCard();
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
                  'is Email - $email: $isEmailMatch',
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
          ],
        ),
      ),
    );
  }
}
