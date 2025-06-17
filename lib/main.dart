import 'package:facebook/feed.dart';
import 'package:flutter/material.dart';
import 'package:facebook/login.dart';
import 'package:facebook/screen1.dart';

void main() {
  runApp(Facebook());
}

class Facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Screen.routeName: (context) => Screen(),
        Login.routeName: (context) => Login(),
        Feeds.routeName: (context) =>Feeds(),
      },
      initialRoute: Screen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
