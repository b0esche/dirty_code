import 'package:flutter/material.dart';

class DirtyScreenEight extends StatelessWidget {
  const DirtyScreenEight({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #8"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FoodRatingCard(title: "Pizza", rating: 1),
            FoodRatingCard(title: "Pasta", rating: 4),
            FoodRatingCard(title: "Lasagne", rating: 5),
          ],
        ),
      ),
    );
  }
}

class FoodRatingCard extends StatelessWidget {
  final String title;
  final int rating;
  const FoodRatingCard({required this.title, required this.rating, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 22)),
            SizedBox(height: 8),
            Text('$rating / 5', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
