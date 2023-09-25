import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

      ),
    );
  }
}

Widget _imageCard() {
  return const Row(
    children: [
      Image(image: AssetImage('assets/mike.png',), height: 300,),
      SizedBox(width: 18,),
      Text('Hit me up when You need to solve a problem using code!!', style: TextStyle(fontSize: 30),)
    ],
  );
}
