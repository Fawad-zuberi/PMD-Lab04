import 'package:classwork/components/CustomCard.dart';
import 'package:flutter/material.dart';

class TodoListHomePage extends StatefulWidget {
  const TodoListHomePage({super.key});

  @override
  State<TodoListHomePage> createState() => _MytodoState();
}

class _MytodoState extends State<TodoListHomePage> {
  final List<String> todo = [
    "Buy groceries",
    "Exercise",
    "Read a book",
    "Complete Flutter project",
    "Call a friend",
    "Clean the house",
    "Cook dinner",
    "Learn Dart",
    "Write a blog post",
    "Watch a movie",
    "Buy groceries",
    "Exercise",
    "Read a book",
    "Complete Flutter project",
    "Call a friend",
    "Clean the house",
    "Cook dinner",
    "Learn Dart",
    "Write a blog post",
    "Watch a movie",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 62, 103, 174),
        title: const Text(
          'Todo List Responsive CW3',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isPortrait = constraints.maxWidth < 500;

          return Container(
            color: Colors.black,
            padding: const EdgeInsets.all(10),
            child: isPortrait
                ? ListView.builder(
                    itemCount: todo.length,
                    itemBuilder: (context, index) {
                      return CustomCard(itemText: todo[index]);
                    },
                  )
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two columns in landscape mode
                      childAspectRatio: 3, // Adjust height of grid items
                    ),
                    itemCount: todo.length,
                    itemBuilder: (context, index) {
                      return CustomCard(itemText: todo[index]);
                    },
                  ),
          );
        },
      ),
    );
  }
}
