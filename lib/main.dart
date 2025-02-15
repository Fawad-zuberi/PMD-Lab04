import 'package:classwork/components/TodoListHomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter ClassWork3',
        debugShowCheckedModeBanner: false,
        home: TodoListHomePage());
  }
}
