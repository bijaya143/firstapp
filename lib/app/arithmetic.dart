import 'package:firstapp/screen/arithmetic_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArithmeticApp extends StatelessWidget {
  const ArithmeticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: ArithmeticScreen(),
    );
  }
}
