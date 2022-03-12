import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback? _changeFunction;

  const TextControl(this._changeFunction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: _changeFunction,
        child: const Text('Change'),
      ),
    );
  }
}
