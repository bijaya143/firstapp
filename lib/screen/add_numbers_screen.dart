import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNumberScreen extends StatelessWidget {
  const AddNumberScreen({super.key});

  final int num1 = 5;
  final int num2 = 7;

  @override
  Widget build(BuildContext context) {
    int sum = num1 + num2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Two Numbers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number 1: $num1',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              'Number 2: $num2',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              'Sum: $sum',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
