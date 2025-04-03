import 'package:flutter/material.dart';

class DirtyScreenTwentyTwo extends StatelessWidget {
  const DirtyScreenTwentyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #22"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ParameterSlider(
                title: "Volume", color: Colors.lightBlue, value: 0.5),
            ParameterSlider(
                title: "Brightness", color: Colors.greenAccent, value: 0.7),
            ParameterSlider(
                title: "Contrast", color: Colors.orangeAccent, value: 0.3),
          ],
        ),
      ),
    );
  }
}

class ParameterSlider extends StatelessWidget {
  final String title;
  final Color color;
  final double value;
  const ParameterSlider(
      {required this.title,
      required this.color,
      required this.value,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(title, style: TextStyle(fontSize: 20)),
          Slider(
            value: value,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
