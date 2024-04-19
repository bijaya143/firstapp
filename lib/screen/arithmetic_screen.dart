// import 'package:flutter/cupertino.dart';
import 'package:firstapp/model/arithmetic_model.dart';
import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final _formKey = GlobalKey<FormState>();

  //arithmetic instance
  ArithmeticModel? arithmeticModel;

  int? first;
  int? second;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Arithmetic'),
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
                    return 'Please enter first number.';
                  }
                  return null;
                },
                onChanged: (value) {
                  first = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter number'
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please enter second number';
                  }
                  return null;
                },
                onChanged: (value) {
                  second = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter number'
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    if (_formKey.currentState!.validate()){}
                    setState(() {
                      arithmeticModel = ArithmeticModel(firstNumber: first!, secondNumber: second!);
                      result = arithmeticModel!.add();
                    });
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Display informatuion
              Text(
                'Final sum is : $result',
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
