import 'package:flutter/material.dart';

void main() {
  // main este o functie care este automat executata de flutter si dart cand aplicatia este executata
  runApp(MyApp());
  // va primii widget-ul tree-ul primit din metoda build apelata automat din constructoru primit ca paremetru, apelata tot de aceasta metoda,
  // si va incerca sa il afiseze pe ecran
}

class MyApp extends StatelessWidget {
  // clasa mosteneste StatelessWidget.
  // fiecare widget din flutter trebuie sa extinda StalessWidget sau StatefulWidget care te obliga sa adaugi metoda build care va fi automat apelata de flutter
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // clasa de baza care foloseste o combinatie de widgeturi furnizata de developerii flutter pentru a crea aplicatia
      home: Text('Hello!'),
      // home este un core widget care va fi adaugat de flutter automat pe ecran
    );
  }
}
