import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
                top: 40,
                left: 50,
                child: Text(
                  'Hi, I am Micky, a software Engineer Specialising in Flutter',
                  style: TextStyle(fontSize: 30),
                )),
            const Positioned(
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
            Positioned(left: 50, top: 200, child: _imageCard())
          ],
        ),
      ),
    );
  }
}

Widget _imageCard() {
  return const Row(
    children: [
      Image(image: AssetImage('assets/mike.png',), height: 300,),
      SizedBox(width: 18,),
      Text('Hit me up when You need to solve a problem using code!!')
    ],
  );
}
