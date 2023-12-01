import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String quoteText;
  String authorName;
  SecondScreen({super.key, required this.quoteText, required this.authorName});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(13, 2, 99, 100),
        foregroundColor: Color.fromRGBO(255, 255, 255, 100),
      ),
      backgroundColor: Color.fromRGBO(231, 229, 242, 100),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Today's Quote",
              style: TextStyle(fontSize: 30),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "'$quoteText'",
            style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "- $authorName",
                style: TextStyle(fontSize: 18),
              )),
        ),
      ]),
    ));
  }
}
