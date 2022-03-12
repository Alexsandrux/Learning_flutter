import 'package:flutter/material.dart';

class AnswerChoice extends StatelessWidget {
  final Function selectHandler;
  final int answerResponse;
  final String buttonText;

  AnswerChoice(this.selectHandler, this.answerResponse, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: () => this.selectHandler(this.answerResponse),
          child: Text(this.buttonText),
        ));
  }
}
