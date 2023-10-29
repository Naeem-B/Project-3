import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets\\onedrive.png',
              height: 300,
              width: 200,
            ),
            Image.asset(
              'assets\\microSoft.png',
              height: 230,
              width: 130,
            )
          ],
        ),
      ),
    );
  }
}
