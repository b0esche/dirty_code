import 'package:flutter/material.dart';

class DirtyScreenNine extends StatelessWidget {
  const DirtyScreenNine({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #9"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MiniAddition(num1: 4, num2: 5),
            MiniAddition(num1: 3, num2: 3),
            MiniAddition(num1: 2, num2: 8),
            MiniAddition(
              num1: 7,
              num2: 1,
            )
          ],
        ),
      ),
    );
  }
}

class MiniAddition extends StatelessWidget {
  final int num1;
  final int num2;
  const MiniAddition({required this.num1, required this.num2, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text('$num1', style: TextStyle(fontSize: 24)),
          Text(' + ', style: TextStyle(fontSize: 24)),
          Text('$num2', style: TextStyle(fontSize: 24)),
          Text(' = ', style: TextStyle(fontSize: 24)),
          Text('${num1 + num2}', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
