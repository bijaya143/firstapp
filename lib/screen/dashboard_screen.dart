import 'package:firstapp/screen/area_screen.dart';
import 'package:firstapp/screen/arithmetic_screen.dart';
import 'package:firstapp/screen/column_screen.dart';
import 'package:firstapp/screen/container_screen.dart';
import 'package:firstapp/screen/flexible_expanded_screen.dart';
import 'package:firstapp/screen/layout_screen.dart';
import 'package:firstapp/screen/list_tile_screen.dart';
import 'package:firstapp/screen/row_and_column_screen.dart';
import 'package:firstapp/screen/simple_interest_screen.dart';
import 'package:firstapp/screen/student_mgmt_screen.dart';
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
              SizedBox(

                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LayoutScreen()));
                  },
                  child: const Text(
                    'Layout',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.pink
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
                        MaterialPageRoute(builder: (context) => const ColumnScreen()));
                  },
                  child: const Text(
                    'Column',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue
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
                        MaterialPageRoute(builder: (context) => const ContainerScreen()));
                  },
                  child: const Text(
                    'Container',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.deepPurpleAccent
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
                        MaterialPageRoute(builder: (context) => const FlexibleExpandedScreen()));
                  },
                  child: const Text(
                    'Flexible Expanded',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black
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
                        MaterialPageRoute(builder: (context) => const RowAndColumnScreen()));
                  },
                  child: const Text(
                    'Row and Column',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.brown
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
                        MaterialPageRoute(builder: (context) => const ListTileScreen()));
                  },
                  child: const Text(
                    'List Tile',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.purpleAccent
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
                        MaterialPageRoute(builder: (context) => const StudentMgmtScreen()));
                  },
                  child: const Text(
                    'Student Management',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.cyan
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     onPressed: (){
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => const AreaScreen()));
              //     },
              //     child: RichText(
              //         text: const TextSpan(
              //             text: 'M',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               color: Colors.red,
              //               fontSize: 30,
              //             ),
              //             children: <TextSpan>[
              //               TextSpan(
              //                   text: 'y name is  Bijaya',
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.normal,
              //                       color: Colors.blueGrey,
              //                       // backgroundColor: Colors.yellow
              //                   )
              //               ),
              //               TextSpan(
              //                 text: ' Majhi.',
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.normal,
              //                   color: Colors.blueGrey
              //                 )
              //               )
              //             ]
              //         )
              //     ),
              //   ),
              // ),
              // Display information
            ],
          ),
        )
    );
  }
}
