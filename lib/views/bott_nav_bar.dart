import 'package:flutter/material.dart';
import 'package:one_drive/views/files.dart';
import 'package:one_drive/views/home.dart';
import 'package:one_drive/views/me.dart';
import 'package:one_drive/views/photos.dart';
import 'package:one_drive/views/shared.dart';

class BottNavBar extends StatefulWidget {
  const BottNavBar({super.key});

  @override
  State<BottNavBar> createState() => _BottNavBarState();
}

class _BottNavBarState extends State<BottNavBar> {
  int selected = 0;
  List views = [
    const Home(),
    const Files(),
    const Shared(),
    const Photos(),
    const Me()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selected = index;
            });
          },
          //backgroundColor: Colors.blue,
          selectedItemColor: Colors.blue,
          currentIndex: selected,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Files'),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Shared'),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Photos'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
          ]),
      body: views[selected],
    );
  }
}
