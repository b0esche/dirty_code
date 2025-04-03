import 'package:flutter/material.dart';

class DirtyScreenOne extends StatelessWidget {
  const DirtyScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dirty Screen #1"),
        ),
        body: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(children: [
              BugBox(number: 1),
              BugBox(number: 2),
              BugBox(number: 3),
              BugBox(number: 4),
            ])));
  }
}

class BugBox extends StatelessWidget {
  final int number;
  const BugBox({required this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.redAccent),
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.bug_report),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Box #$number",
              style: const TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ));
  }
}
