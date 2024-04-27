import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key});

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column', style: TextStyle(color: Colors.yellow, fontSize: 40, ),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.lightGreen,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: null,
              child: const Text(
                'Button 1',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black
                ),
              ),
            ),
            // Spacer(),
            ElevatedButton(
              onPressed: null,
              child: const Text(
                'Button 2',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black
                ),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text(
                'Button 3',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

