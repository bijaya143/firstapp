import 'package:firstapp/screen/dashboard_screen.dart';
import 'package:flutter/material.dart';

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}
