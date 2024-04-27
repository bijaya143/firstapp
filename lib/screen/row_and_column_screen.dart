import 'package:flutter/material.dart';

class RowAndColumnScreen extends StatelessWidget {
  const RowAndColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Row and Column'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   const Expanded(child: SizedBox(
                       height: double.infinity,
                       width: double.infinity,
                       child: Center(
                         child: Text('Container 1') ,
                       )
                   )),
                  Expanded(child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.red,
                      child: const Center(
                        child: Text('Container 2') ,
                      )
                  )),
                  const Expanded(
                      child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Center(
                        child: Text('Container 3') ,
                      )
                  ))
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.indigo,
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    const Expanded(child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Center(
                          child: Text('Container 1') ,
                        )
                    )),
                    Expanded(child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.blue,
                        child: const Center(
                          child: Text('Container 2') ,
                        )
                    )),
                    const Expanded(child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Center(
                          child: Text('Container 3') ,
                        )
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
