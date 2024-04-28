import 'package:firstapp/common/my_snackbar.dart';
import 'package:firstapp/screen/output_screen.dart';
import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final int index;
  final String imagePath;
  const CommonListTile({required this.index, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
         backgroundImage: AssetImage(imagePath),
        ) ,
        title: Text('$index'),
        subtitle: const Text('Mobile Application Developer'),
        trailing: const Icon(Icons.delete),
        onTap: () {
          // showMySnackBar(message: "$index has been clicked.", context: context);
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OutputScreen(title: '$index', subtitle: '$index')));
        }
    );
  }
}

