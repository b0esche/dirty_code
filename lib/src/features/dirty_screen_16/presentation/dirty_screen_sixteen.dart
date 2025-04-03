import 'package:flutter/material.dart';

class DirtyScreenSixteen extends StatelessWidget {
  const DirtyScreenSixteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #16"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            UserInfoTile(
                name: "Alice Johnson",
                description: "Praject Manager",
                pic: 'https://picsum.photos/100'),
            UserInfoTile(
                name: "Bob Smith",
                description: "Developer",
                pic: 'https://picsum.photos/101'),
            UserInfoTile(
                name: "Cathrine Lee",
                description: "Designer",
                pic: 'https://picsum.photos/102'),
            UserInfoTile(
                name: "David Wilson",
                description: "Product Owner",
                pic: 'https://picsum.photos/103'),
          ],
        ),
      ),
    );
  }
}

class UserInfoTile extends StatelessWidget {
  final String name;
  final String description;
  final String pic;
  const UserInfoTile(
      {required this.name,
      required this.description,
      required this.pic,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(pic),
      ),
      title: Text(name),
      subtitle: Text(description),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {},
    );
  }
}
