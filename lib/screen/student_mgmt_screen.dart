import 'package:flutter/material.dart';

class StudentMgmtScreen extends StatefulWidget {
  const StudentMgmtScreen({super.key});

  @override
  State<StudentMgmtScreen> createState() => _StudentMgmtScreenState();
}

class _StudentMgmtScreenState extends State<StudentMgmtScreen> {
  // Key
  final _formKey = GlobalKey<FormState>();

  // Variable
  String? firstName;
  String? lastName;
  String? address;

  Object? result = {};

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
    // return Scaffold(
    //     backgroundColor: Colors.grey,
    //     appBar: AppBar(
    //       title: const Text('Area of Circle'),
    //       backgroundColor: Colors.blueGrey,
    //       centerTitle: true,
    //       elevation: 0,
    //     ),
    //     body: Padding(
    //       padding: const EdgeInsets.all(9),
    //       child: Form(
    //         key: _formKey,
    //         child: Column(
    //           children: [
    //             TextFormField(
    //               validator: (value) {
    //                 if(value == null || value.isEmpty){
    //                   return 'Please enter first name.';
    //                 }
    //                 return null;
    //               },
    //               onChanged: (value) {
    //                 firstName = value;
    //               },
    //               keyboardType: TextInputType.number,
    //               decoration: const InputDecoration(
    //                   border: OutlineInputBorder(
    //                     borderRadius: BorderRadius.all(Radius.circular((10.0))),
    //                   ),
    //                   enabledBorder: OutlineInputBorder(
    //                     borderSide: BorderSide(color: Colors.red),
    //
    //                   ),
    //                   focusedBorder: OutlineInputBorder(
    //                     borderSide: BorderSide(color: Colors.green),
    //                   ),
    //                   labelText: 'Enter Radius'
    //               ),
    //             ),
    //             const SizedBox(height: 8),
    //             const SizedBox(height: 8),
    //             // Button
    //             SizedBox(
    //               width: double.infinity,
    //               child: ElevatedButton(
    //                 onPressed: (){
    //                   if (_formKey.currentState!.validate()){}
    //                   setState(() {
    //                     circle = Circle(radius: radius!);
    //                     result = circle!.calculateArea();
    //                   });
    //                 },
    //                 child: const Text(
    //                   'Calculate',
    //                   style: TextStyle(
    //                     fontSize: 25,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(height: 8),
    //             // Display informatuion
    //             Text(
    //               'Area of a circle is : $result',
    //               style: const TextStyle(
    //                 fontSize: 30,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     )
    // );
  }
}
