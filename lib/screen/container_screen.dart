import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Container'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
            child:
            Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: const Text('Container'),
              decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  // color: Colors.yellow,
                  border: Border.all(
                    // color: Colors.black,
                    // width: 10
                  )
              ),
            ),
        )
    );
  }
}
