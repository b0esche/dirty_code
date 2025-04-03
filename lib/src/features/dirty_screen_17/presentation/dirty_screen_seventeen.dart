import 'package:flutter/material.dart';

class DirtyScreenSeventeen extends StatelessWidget {
  const DirtyScreenSeventeen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #17"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ColoredMovieBar(title: "Inception", year: 2010, color: Colors.blue),
            ColoredMovieBar(
                title: "Interstellar", year: 2014, color: Colors.greenAccent),
            ColoredMovieBar(
                title: "The Matrix", year: 1999, color: Colors.redAccent),
            ColoredMovieBar(
                title: "The Lion King", year: 1994, color: Colors.orangeAccent),
          ],
        ),
      ),
    );
  }
}

class ColoredMovieBar extends StatelessWidget {
  final String title;
  final int year;
  final Color color;
  const ColoredMovieBar(
      {required this.title,
      required this.year,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(Icons.movie, size: 50, color: Colors.white),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                '$year',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
