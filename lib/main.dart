import 'package:flutter/material.dart';
import 'package:one_drive/views/Gallaery.dart';
import 'package:one_drive/views/bott_nav_bar.dart';
import 'package:one_drive/views/files.dart';
import 'package:one_drive/views/home.dart';
import 'package:one_drive/views/laoding.dart';
import 'package:one_drive/views/me.dart';
import 'package:one_drive/views/photos.dart';
import 'package:one_drive/views/shared.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottNavBar());
  }
}
