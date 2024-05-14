import 'package:flutter/material.dart';
import 'package:flutter_basic_01/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RootPage(),
    );
  }
}