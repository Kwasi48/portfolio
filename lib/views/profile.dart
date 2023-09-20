import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 40,
                left: 50,
                child: Text(
                  'Hi, I am Micky, a software Engineer Specialising in Flutter',
                  style: TextStyle(fontSize: 30),
                )),
            Positioned(
                top: 90,
                left: 50,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Text(
                    'Lorem',
                    style: TextStyle(fontSize: 25),
                  ),
                )),
            Positioned(
                top: 300,
                left: 50,
                child: Card(
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    'Lorem',
                    style: TextStyle(fontSize: 25),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
