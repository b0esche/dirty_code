import 'package:flutter/material.dart';

class DirtyScreenFive extends StatelessWidget {
  const DirtyScreenFive({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #5"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FavBar(num: 1, color: Colors.pinkAccent),
            FavBar(
              num: 2,
              color: Colors.purpleAccent,
            ),
            FavBar(
              num: 3,
              color: Colors.redAccent,
            ),
            FavBar(
              num: 4,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class FavBar extends StatelessWidget {
  final Color color;
  final int num;
  const FavBar({required this.num, required this.color, super.key});

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
          Icon(Icons.favorite, color: Colors.white),
          SizedBox(width: 8),
          Text(
            'Favorite $num',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
