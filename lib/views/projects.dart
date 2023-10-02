import 'package:flutter/material.dart';


class projects extends StatelessWidget {
  const projects({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle_outlined),
        title: Text('Repositories'),
        centerTitle: true,
      ),
      // body: SafeArea(
      //   child: ListView.builder(itemBuilder: itemBuilder),
      // ),
    );
  }
}
