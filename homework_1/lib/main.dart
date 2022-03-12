// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import 'App.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  List<String> textsForChangeButton = ['Hello!', 'Bye!'];
  int textIndex = 0;

  void _incrementIndex() {
    setState(() {
      textIndex++;
    });

    if (textIndex > textsForChangeButton.length - 1) {
      textIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return App(_incrementIndex, textsForChangeButton, textIndex);
  }
}
