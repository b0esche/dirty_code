// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class DirtyScreenTwentyFour extends StatelessWidget {
  const DirtyScreenTwentyFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #24"),
      ),
      body: ListView(
        children: [
          TaskTile(title: "Buy Groceries", isDone: false),
          TaskTile(title: "Walk the Dog", isDone: true),
          TaskTile(title: "Complete Homework", isDone: false),
          TaskTile(title: "Call mom", isDone: true),
        ],
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final String title;
  final bool isDone;
  const TaskTile({required this.title, required this.isDone, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.shopping_basket),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: (value) {},
      ),
    );
  }
}
