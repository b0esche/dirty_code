import 'package:flutter/material.dart';

class DirtyScreenSix extends StatelessWidget {
  const DirtyScreenSix({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #6"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            WarningBar(num: 1, color: Colors.yellow),
            WarningBar(num: 2, color: Colors.amber),
            WarningBar(num: 3, color: Colors.orange),
            WarningBar(num: 4, color: Colors.deepOrange),
          ],
        ),
      ),
    );
  }
}

class WarningBar extends StatelessWidget {
  final int num;
  final Color color;
  const WarningBar({required this.num, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(Icons.warning, color: Colors.black),
          SizedBox(width: 8),
          Text(
            'Warning $num',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
