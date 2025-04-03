import 'package:flutter/material.dart';

class DirtyScreenTwentyOne extends StatelessWidget {
  const DirtyScreenTwentyOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #21"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UpsideDownCalcCard(
                calculation: "5 + 3 = 8", description: "Simple Addition"),
            UpsideDownCalcCard(
                calculation: "10 - 2 =8 ", description: "Simple Substraction"),
            UpsideDownCalcCard(
                calculation: "4 * 2 = 8", description: "Simple Multiplication"),
            UpsideDownCalcCard(
                calculation: "16 / 2 = 8", description: "Simple Division"),
          ],
        ),
      ),
    );
  }
}

class UpsideDownCalcCard extends StatelessWidget {
  final String calculation;
  final String description;

  const UpsideDownCalcCard(
      {required this.calculation, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Transform.rotate(
        angle: 3.14159, // Rotate 180 degrees
        child: SizedBox(
          width: 300,
          child: Card(
            color: Colors.cyan,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(calculation, style: TextStyle(fontSize: 24)),
                  SizedBox(height: 8),
                  Text(description, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
