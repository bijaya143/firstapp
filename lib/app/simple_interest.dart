import 'package:firstapp/screen/simple_interest_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleInterestApp extends StatelessWidget {
  const SimpleInterestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: SimpleInterestScreen(),
    );
  }
}
