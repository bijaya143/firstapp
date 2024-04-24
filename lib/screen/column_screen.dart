import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(Icons.star, size: 30),
            Icon(Icons.star, size: 30),
            Icon(Icons.star, size: 30),
          ],
        ),
      ),
    );
  }
}
