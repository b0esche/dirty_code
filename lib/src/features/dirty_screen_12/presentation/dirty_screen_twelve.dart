import 'package:flutter/material.dart';

class DirtyScreenTwelve extends StatelessWidget {
  const DirtyScreenTwelve({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #12"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FoodStamp(title: "Döner", price: 10, color: Colors.blue),
            FoodStamp(
                title: "Yufka", price: 20, color: Colors.lightGreenAccent),
            FoodStamp(title: "Pizza", price: 30, color: Colors.purpleAccent),
            FoodStamp(title: "Sushi", price: 40, color: Colors.pink),
          ],
        ),
      ),
    );
  }
}

class FoodStamp extends StatelessWidget {
  final String title;
  final int price;
  final Color color;
  const FoodStamp(
      {required this.title,
      required this.price,
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
          Text('Price: $price €', style: TextStyle(fontSize: 18)),
          SizedBox(height: 8),
          Text('Essen'),
        ],
      ),
    );
  }
}
