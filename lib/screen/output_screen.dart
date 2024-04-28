import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  const OutputScreen({required this.title, required this.subtitle,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output Screen'),
      ),
      body: Center(
        child:
          Text('Hello $title',
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
          ),
      ),
    );
  }
}
