import 'package:flutter/material.dart';

class DirtyScreenTen extends StatelessWidget {
  const DirtyScreenTen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dirty Screen #10"),
        ),
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              UserBar(name: "Hans", pic: 'https://picsum.photos/100'),
              UserBar(name: "Helga", pic: 'https://picsum.photos/101'),
              UserBar(name: "Udo", pic: 'https://picsum.photos/102'),
              UserBar(name: "Olgun", pic: 'https://picsum.photos/103'),
            ],
          ),
        ));
  }
}

class UserBar extends StatelessWidget {
  final String name;
  final String pic;
  const UserBar({required this.name, required this.pic, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(pic),
          ),
          SizedBox(width: 8),
          Text(
            name,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
