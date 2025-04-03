import 'package:flutter/material.dart';

class DirtyScreenFour extends StatelessWidget {
  const DirtyScreenFour({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #4"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ColoredBox(
                title: "Home", icon: Icons.home_filled, color: Colors.blue),
            ColoredBox(
                title: "Work",
                icon: Icons.workspace_premium,
                color: Color.fromARGB(255, 33, 243, 177)),
            ColoredBox(
                title: "School",
                icon: Icons.school,
                color: Color.fromARGB(255, 255, 169, 20)),
            ColoredBox(
                title: "Bike",
                icon: Icons.pedal_bike,
                color: Color.fromARGB(255, 208, 33, 243)),
          ],
        ),
      ),
    );
  }
}

class ColoredBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const ColoredBox(
      {required this.title,
      required this.icon,
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
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
