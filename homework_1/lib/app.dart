import 'package:flutter/material.dart';
import './textControl.dart';
import './textToControl.dart';

class App extends StatelessWidget {
  final VoidCallback? _changeFunction;
  final List<String> _texts;
  final int _textIndex;

  App(this._changeFunction, this._texts, this._textIndex);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'First homework of the course',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextToControl(_texts, _textIndex),
            TextControl(_changeFunction),
          ],
        ),
      ),
    );
  }
}
