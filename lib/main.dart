import 'package:chuj/To_do_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KOX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ToDoListPage(),
    );
  }
}
