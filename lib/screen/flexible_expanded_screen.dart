import 'package:firstapp/common/my_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Flexible Expanded'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child:
              Column(
                children: [
                  Flexible(
                    // fit: FlexFit.loose,
                    child:
                    Container(
                    height: 600,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      //   // shape: BoxShape.circle,
                      color: Colors.yellow,
                      //   //   border: Border.all(
                      //   //     // color: Colors.black,
                      //   //     // width: 10
                      //   //   )
                    ),
                    child:
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Button 1 Clicked!.'), duration: Duration(seconds: 3), backgroundColor: Colors.green, behavior: SnackBarBehavior.floating,));
                        },
                        child: const Text(
                          'Button 1',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  Expanded(
                    // fit: FlexFit.tight,
                    child:
                    Container(
                      height: 300,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            // color: Colors.black,
                            // width: 10
                          )
                      ),
                      child:
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            showMySnackBar(message: 'Button 2 has been clicked.', context: context, color: Colors.red);
                          },
                          child: const Text(
                            'Button 2',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.red
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
        )
    );
  }
}
