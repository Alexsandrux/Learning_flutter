import 'package:flutter/material.dart';

void main() {
  // main este o functie care este automat executata de flutter si dart cand aplicatia este executata
  runApp(MyApp());
  // va primii widget-ul tree-ul primit din metoda build apelata automat din constructoru primit ca paremetru, apelata tot de aceasta metoda,
  // si va incerca sa il afiseze pe ecran
}

class MyApp extends StatefulWidget {
// stateful widget este formata din doua clase, cea de a doua avand de obicei denumirea primei clase la care se adauga cuvantul "State" ca si conventie

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // clasa mosteneste StatelessWidget.
  // fiecare widget din flutter trebuie sa extinda StalessWidget sau StatefulWidget care te obliga sa adaugi metoda build care va fi automat apelata de flutter
  var answerIndex = 0;

  void changeIndex(num newNumber) {
    setState(() {
      answerIndex = newNumber;
    });
    print(answerIndex);
  }

  @override
  Widget build(BuildContext context) {
    var answers = [
      'Waiting for answer..',
      'Good answer',
      'Bad answer',
    ];

    return MaterialApp(
      // clasa de baza care foloseste o combinatie de widgeturi furnizata de developerii flutter pentru a crea aplicatia
      home: Scaffold(
        // scaffold este un layout care ne ajuta sa facem aplicatii mai prezentabile, are o aparenta clasica android
        appBar: AppBar(
          title: Text('My first flutter scratch app'),
        ),
        body: Column(
          children: [
            Text('What is 2 + 3'),
            ElevatedButton(
              onPressed: () => changeIndex(1),
              child: Text('5'),
            ),
            ElevatedButton(
              onPressed: () => changeIndex(2),
              child: Text('6'),
            ),
            ElevatedButton(
              onPressed: () => changeIndex(2),
              child: Text('8'),
            ),
            Text(answers.elementAt(answerIndex))
          ],
        ),
      ),
      // home este un core widget care va fi adaugat de flutter automat pe ecran
    );
  }
}
