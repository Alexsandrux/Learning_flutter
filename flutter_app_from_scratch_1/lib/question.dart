import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _quetionText;

  Question(this._quetionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        this._quetionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
