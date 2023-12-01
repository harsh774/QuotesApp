import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:quotes_app/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int quoteNumber = 1;
  Random random = Random();
  String quote = "Press the Button to get your first Quote";
  String author = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("👦🏻 Harsh's Quote App"),
          backgroundColor: Color.fromRGBO(13, 2, 99, 100),
          titleTextStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 100)),
        ),
        backgroundColor: Color.fromRGBO(225, 225, 242, 100),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "💡Today's Quote 🎯",
                  style: TextStyle(fontSize: 30),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '"$quote"',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "✍🏻 - $author",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            ElevatedButton(
              onPressed: () async {
                int number = random.nextInt(100) + 1;
                var url = Uri.parse("https://dummyjson.com/quotes/$number");
                var response = await http.get(url);

                var data = jsonDecode(response.body);
                quote = data["quote"];
                author = data["author"];

                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => SecondScreen(
                //     quoteText: quote,
                //     authorName: author,
                //   ),
                // ));

                setState(() {
                  // quoteNumber++;
                });
              },
              child: Text("🦋 Get quote! 🦋"),
            ),
          ],
        ),
      ),
    );
  }
}
