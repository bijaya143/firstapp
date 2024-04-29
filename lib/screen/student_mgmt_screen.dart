import 'package:firstapp/model/student/student_model.dart';
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
  String? image;
  Student? student;
  Map<String, dynamic>? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Student Management'),
          backgroundColor: Colors.indigo,
          centerTitle: true,
          elevation: 0,
        ),
        body:
        Column(
          children: [
            Padding(padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Please enter first name.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        firstName = value;
                      },
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular((10.0))),
                          ),
                          labelText: 'Enter First Name'
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Please enter last name.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        lastName = value;
                      },
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular((10.0))),
                          ),
                          labelText: 'Enter Last Name'
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Please enter address.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        address = value;
                      },
                      keyboardType: TextInputType.streetAddress,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular((10.0))),
                          ),
                          labelText: 'Enter Address'
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          if (_formKey.currentState!.validate()){}
                          setState(() {
                            student = Student(firstName: firstName!, lastName: lastName!, address: address!);
                            result = student!.getStudent();
                          });
                          image = 'assets/images/image_2.jpg';
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child:
            SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                        height: 200,
                        child: image != null ? CircleAvatar(backgroundImage:
                          AssetImage('$image'), maxRadius: 80, minRadius: 80,) : null
                    ),
                    if(result != null) ...{
                      for (var entry in result!.entries) ...{
                        ListTile(
                          title: Text('${entry.key}: ${entry.value}', style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      }
                    }
                  ],
                ),
              )
            ),
          ],
        ),
    );
  }
}
