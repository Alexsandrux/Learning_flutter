import 'package:flutter/material.dart';

class TextToControl extends StatelessWidget {
  final List<String> _texts;
  final int _textIndex;

  const TextToControl(this._texts, this._textIndex, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Text(
          _texts[_textIndex],
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ));
  }
}
