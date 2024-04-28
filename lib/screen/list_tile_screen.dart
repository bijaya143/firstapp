import 'package:firstapp/common/list_tile.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            for(int i=0; i<100; i++) ...{
              if(i % 2 == 0) ...{
                CommonListTile(index: i, imagePath: 'assets/images/image_2.jpg',)
              } else ...{
                CommonListTile(index: i, imagePath: 'assets/images/image_1.jpg',)
              }
            }
          ],
        ),

      )

    );
  }
}
