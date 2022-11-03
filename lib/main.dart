import 'package:flutter/material.dart';
import 'package:to_do/screens/to_dos_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDosList(),
    );
  }
}
