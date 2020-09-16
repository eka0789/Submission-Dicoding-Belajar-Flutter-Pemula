import 'package:flutter/material.dart';
import 'package:filmindonesia/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Film Indonesia Terlaris',
      theme: ThemeData.light(),
      home: MainScreen(),
    );
  }
}
