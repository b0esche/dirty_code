import 'package:flutter/material.dart';

class DirtyScreenEighteen extends StatelessWidget {
  const DirtyScreenEighteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #18"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DescribedCalcCard(num1: 4, num2: 5, description: "Simple Addition"),
            DescribedCalcCard(
                num1: 7, num2: 3, description: "Another Addition"),
            DescribedCalcCard(
                num1: 6, num2: 2, description: "Yet Another Addition"),
            DescribedCalcCard(num1: 5, num2: 5, description: "Addition Again"),
          ],
        ),
      ),
    );
  }
}

class DescribedCalcCard extends StatelessWidget {
  final int num1;
  final int num2;
  final String description;
  const DescribedCalcCard(
      {required this.num1,
      required this.num2,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '$num1 + $num2 = ${num1 + num2}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
