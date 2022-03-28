import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text("The recipes for the category!"),
      ),
      appBar: AppBar(title: const Text("Test")),
    );
  }
}
