import 'package:firstapp/screen/area_screen.dart';
import 'package:firstapp/screen/arithmetic_screen.dart';
import 'package:firstapp/screen/simple_interest_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Dashboard'),
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
                        MaterialPageRoute(builder: (context) => const ArithmeticScreen()));
                  },
                  child: const Text(
                    'Arithmetic',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(

                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SimpleInterestScreen()));
                  },
                  child: const Text(
                    'Simple Interest',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.green
                    ),
                  ),
                ),
              ),
              SizedBox(

                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AreaScreen()));
                  },
                  child: const Text(
                    'Area',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.red
                    ),
                  ),
                ),
              ),
              // Display information
            ],
          ),
        )
    );
  }
}
