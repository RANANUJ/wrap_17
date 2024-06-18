import 'package:flutter/material.dart';
import 'package:wrap_17/wrap_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WrapScreen(),
    );
  }
}
