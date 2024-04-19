import 'package:firstapp/model/area/circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAreaScreen extends StatefulWidget {
  const CircleAreaScreen({super.key});

  @override
  State<CircleAreaScreen> createState() => _CircleAreaScreenState();
}

class _CircleAreaScreenState extends State<CircleAreaScreen> {
  final _formKey = GlobalKey<FormState>();
  //arithmetic instance
  Circle? circle;
  double result = 0.0;

  double? radius;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Area of Circle'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(9),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter radius.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    radius = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Radius'
                  ),
                ),
                const SizedBox(height: 8),
                const SizedBox(height: 8),
                // Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()){}
                      setState(() {
                        circle = Circle(radius: radius!);
                        result = circle!.calculateArea();
                      });
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // Display informatuion
                Text(
                  'Area of a circle is : $result',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
