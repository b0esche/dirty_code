import 'package:flutter/material.dart';

class DirtyScreenFifteen extends StatelessWidget {
  const DirtyScreenFifteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #15"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ColoredFoodCard(
              title: "Spaghetti Bolognese",
              description: "Spaghetti, Beef, Tomato Sauce",
              color: Colors.orange,
            ),
            ColoredFoodCard(
              title: "Caesar Salad",
              description: "Lettuce, Croutins, Parmesan",
              color: const Color.fromARGB(255, 0, 255, 42),
            ),
            ColoredFoodCard(
              title: "Margherita Pizza",
              description: "Dough, Tomato, Mozzarella",
              color: const Color.fromARGB(255, 255, 47, 0),
            ),
            ColoredFoodCard(
              title: "Grilled Chicken",
              description: "Chicken, Spices, Lemon",
              color: const Color.fromARGB(255, 0, 157, 255),
            ),
          ],
        ),
      ),
    );
  }
}

class ColoredFoodCard extends StatelessWidget {
  final String title;
  final String description;
  final Color color;

  const ColoredFoodCard(
      {required this.title,
      required this.description,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("Ingredients: $description", style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
