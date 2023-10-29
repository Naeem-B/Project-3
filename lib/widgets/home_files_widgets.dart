import 'package:flutter/material.dart';

class HomeFilesWidgets extends StatelessWidget {
  HomeFilesWidgets(
      {super.key,
      required this.leading,
      required this.title,
      required this.subtitle,
      required this.trailing});
  String leading;
  String title;
  String subtitle;
  Icon trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(leading),
      title: Text("data"),
      subtitle: Text("data"),
      trailing: Icon(Icons.menu),
    );
  }
}
