import 'package:firstapp/screen/add_numbers_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddApp extends StatelessWidget {
  const AddApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Add Two Numbers',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: AddNumberScreen(),
);
}
}
