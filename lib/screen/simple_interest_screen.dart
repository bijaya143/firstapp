import 'package:firstapp/model/simple_interest_model.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterestScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // simple interest instance
  SimpleInterestModel? simpleInterestModel;

  // Delcare variables
  double? principal;
  double? time;
  double? rate;
  double result = 0;

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
                    if (value == null || value.isEmpty) {
                      return 'Please enter principal';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    principal = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Principal'
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter time';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    time = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Time'
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter rate';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    rate = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Rate'
                  ),
                ),
                const SizedBox(height: 8),
                // Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      //validation
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                      setState(() {
                        simpleInterestModel = SimpleInterestModel(principal: principal!, time: time!, rate: rate!);
                        result = simpleInterestModel!.calculate();
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
                  'Simple Interest is : $result',
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
