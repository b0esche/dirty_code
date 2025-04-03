import 'package:flutter/material.dart';

class DirtyScreenFourteen extends StatelessWidget {
  const DirtyScreenFourteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #14"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MovieCard(title: "The Shawshank Redemption", year: 1994),
            MovieCard(title: "THe Godfather", year: 1972),
            MovieCard(title: "The Dark Knight", year: 2008),
            MovieCard(title: "Pulp Fiction", year: 1994),
          ],
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final int year;
  const MovieCard({required this.title, required this.year, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.movie, size: 50),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontSize: 22)),
            Text('$year', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
