import 'package:flutter/material.dart';

class DirtyScreenEleven extends StatelessWidget {
  const DirtyScreenEleven({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #11"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            EventTile(title: "Abrissparty"),
            EventTile(title: "Apres Ski"),
            EventTile(title: "Oktoberfest"),
            EventTile(title: "Club Night"),
          ],
        ),
      ),
    );
  }
}

class EventTile extends StatelessWidget {
  final String title;
  const EventTile({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.event),
      title: Text(title),
      subtitle: const Text('Party'),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {},
    );
  }
}
