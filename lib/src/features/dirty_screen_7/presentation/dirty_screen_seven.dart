import 'package:flutter/material.dart';

class DirtyScreenSeven extends StatelessWidget {
  const DirtyScreenSeven({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #7"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            IconCard(
                title: "Stern",
                description: "Das ist ein Stern",
                icon: Icons.star),
            IconCard(
                title: "Herz",
                description: "Das ist ein Herz",
                icon: Icons.favorite),
            IconCard(
                title: "Haus",
                description: "Das ist ein Haus",
                icon: Icons.home),
            IconCard(
                title: "Koffer",
                description: "Das ist ein Koffer",
                icon: Icons.work),
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  const IconCard(
      {required this.title,
      required this.description,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 50),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontSize: 22)),
            Text(description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
