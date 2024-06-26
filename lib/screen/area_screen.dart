import 'package:firstapp/screen/circle_area_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AreaScreen extends StatefulWidget {
  const AreaScreen({super.key});

  @override
  State<AreaScreen> createState() => _AreaScreenState();
}

class _AreaScreenState extends State<AreaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Area'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(9),
          child: Column(
            children: [
              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CircleAreaScreen()));
                  },
                  child: RichText(
                    text: const TextSpan(
                     text: 'Area ',
                     style: TextStyle(
                       color: Colors.green,
                       fontSize: 30,
                     ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Of',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                              backgroundColor: Colors.yellow
                            )
                          ),
                          TextSpan(
                            text: ' Circle',
                          )
                        ]
                    )
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Display information
            ],
          ),
        )
    );
  }
}
