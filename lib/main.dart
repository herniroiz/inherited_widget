import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited_number.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InheritedNumber(
        child: HomePage(),
        number: number,
      ),
      floatingActionButton: ElevatedButton(
        child: Text('Change Number'),
        onPressed: () => setState(() {
          number = Random().nextInt(32);
        }),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(InheritedNumber.of(context)!.number.toString()),
    );
  }
}
