import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hacker News",
      home: HomePage()

    );
  }
}
