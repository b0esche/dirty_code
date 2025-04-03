import 'package:flutter/material.dart';

class DirtyScreenTwenty extends StatelessWidget {
  const DirtyScreenTwenty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #20"),
      ),
      body: ListView(
        children: [
          OfficeRoleBar(
              name: "Michael Scott",
              officePosition: "Regional Manager",
              pic: 'https://randomuser.me/api/portraits/men/11.jpg',
              notificationCount: 1),
          OfficeRoleBar(
              name: "Pam Beasley",
              officePosition: "Receptionist",
              pic: 'https://randomuser.me/api/portraits/women/22.jpg',
              notificationCount: 4),
          OfficeRoleBar(
              name: "Jim Halpert",
              officePosition: "Sales Representative",
              pic: 'https://randomuser.me/api/portraits/men/33.jpg',
              notificationCount: 129),
          OfficeRoleBar(
              name: "Dwight Schrute",
              officePosition: "Assistant Regional Manager",
              pic: 'https://randomuser.me/api/portraits/women/44.jpg',
              notificationCount: 2),
        ],
      ),
    );
  }
}

class OfficeRoleBar extends StatelessWidget {
  final String name;
  final String officePosition;
  final String pic;
  final int notificationCount;
  const OfficeRoleBar(
      {required this.name,
      required this.officePosition,
      required this.pic,
      required this.notificationCount,
      super.key});

  String formatNotificationCount(int number) {
    return number > 99 ? '99+' : number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Badge(
        label: Text(
          formatNotificationCount(notificationCount),
          style: TextStyle(color: Colors.white),
        ),
        child: CircleAvatar(
          backgroundImage: NetworkImage(pic),
        ),
      ),
      title: Text(name),
      subtitle: Text(officePosition),
      trailing: Icon(Icons.more_vert),
    );
  }
}
