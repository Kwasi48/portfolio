import 'package:flutter/material.dart';


class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Text('Hi, I am Micky, a software Engineer Specialising in Flutter',)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
