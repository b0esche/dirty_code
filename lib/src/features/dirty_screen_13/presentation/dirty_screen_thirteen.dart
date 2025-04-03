import 'package:flutter/material.dart';

class DirtyScreenThirteen extends StatelessWidget {
  const DirtyScreenThirteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #13"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            UserTile(
                name: "John Doe",
                pic: 'https://randomuser.me/api/portraits/men/1.jpg'),
            UserTile(
                name: "Jane Smith",
                pic: 'https://randomuser.me/api/portraits/women/2.jpg'),
            UserTile(
                name: "Alex Johnson",
                pic: 'https://randomuser.me/api/portraits/men/3.jpg'),
            UserTile(
                name: "Emma Brown",
                pic: 'https://randomuser.me/api/portraits/women/4.jpg'),
          ],
        ),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final String name;
  final String pic;
  const UserTile({required this.name, required this.pic, super.key});

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
